
/// Author: wht

using LibraryEntity;
using PercentageSimilarity;
using SQLConnector;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

/// <summary>
/// 搜索器
/// </summary>
namespace Searching
{
    /// <summary>
    /// 给书籍信息附加相关度
    /// </summary>
    class _InfoPack
    {
        public BookInfo value;
        public double weight;
        public _InfoPack(BookInfo b, double w)
        {
            value = b;
            weight = w;
        }
    }


    /// <summary>
    /// 搜索工具包
    /// </summary>
    public static class Searcher
    {
        /// <summary>
        /// 寻找书籍信息
        /// </summary>
        /// <param name="query">关键字，用空格分割</param>
        /// <returns></returns>
        public static BookInfo[] SearchFromBookInfo(string query)
        {
            var books = (new SelectBookInfo()).GetList();

            // 建立暂存表
            var ipl = new List<_InfoPack>();
            // 准备，并执行多关键字查找
            var qlist = Regex.Split(query, @"[ \n]");
            foreach (var sq in qlist)
            {
                // 为每一个条目计算权重并添加进暂存表
                foreach (var book in books)
                {
                    double weight = 0;

                    weight += SimilarityExtensions.CalculateSimilarity(sq, book.name);
                    weight += SimilarityExtensions.CalculateSimilarity(sq, book.ISBN) * 0.8;
                    weight += SimilarityExtensions.CalculateSimilarity(sq, book.writer) * 0.7;
                    weight += SimilarityExtensions.CalculateSimilarity(sq, book.publisher) * 0.4;

                    ipl.Add(new _InfoPack(book, weight));
                }
            }

            // 建立返回表
            var ret = new List<_InfoPack>();

            // 按书籍分类查找结果
            var grouped = ipl.GroupBy(x => x.value);
            foreach (var g in grouped)
            {
                // 合并每一个查找结果的权重并输出到最终结果
                var weights = g.Select(x => x.weight);
                double weight = 0;
                foreach (var w in weights)
                {
                    weight += w;
                }

                ret.Add(new _InfoPack(g.Key, weight));
            }
            // 去掉完全无关的条目（事实上，每个条目的相似度都非常低）
            ret = ret.Where(x => x.weight > 0).ToList();
            // 按权重降序排序，返回书籍的列表
            return ret.OrderByDescending(x => x.weight).Select(x => x.value).ToArray();
        }
    }
}
