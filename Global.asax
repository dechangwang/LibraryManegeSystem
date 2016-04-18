<%@ Application Language="C#" %>

<script RunAt="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        Application["Reminder"] = new Reminding.Reminder(5000); // 注册“过期未还提醒”组件。
        ((Reminding.Reminder)Application["Reminder"]).Start(); // 启动这个组件。可以在其他 网页 里这样引用以控制开关。
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs
        // 存储一切未处理的异常
        var ex = Server.GetLastError().GetBaseException();
        var str = new StringBuilder();
        str.Append("\r\n# " + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
        str.Append(" ! " + ex.ToString());

        var savepath = Server.MapPath(@"~/log/");
        if (!System.IO.Directory.Exists(savepath)) System.IO.Directory.CreateDirectory(savepath);

        System.IO.File.AppendAllText(savepath + DateTime.Now.ToString("yyyyMMdd") + ".log", str.ToString(), System.Text.Encoding.UTF8);
        Server.ClearError();
        //Response.Redirect(@"~/error");
    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

</script>
