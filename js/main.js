$.fn.extend({
	allenMenu: function() {
		$(this).children('ul').children('li').hover(
			function() {
				if(!$(this).children('ul').hasClass('focus')) {
					$(this).addClass('focus');
					$(this).children('ul:first').stop(true, true).animate({ height:'show' }, 'fast');
				}
			},
			function() {
				$(this).removeClass('focus');
				$(this).children('ul:first').stop(true, true).animate({ height:'hide', opacity:'hide' }, 'slow');
			}
		);
		
	}
});