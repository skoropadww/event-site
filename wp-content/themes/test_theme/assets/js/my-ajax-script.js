( function( $ ) {
	function ajaxFilterHandler (formData) {

		if ( $(window).attr('requestRunning') )
		  return;
	
		$(window).attr('requestRunning', true);
	
		$.ajax({
		  url: ajax_object.ajaxurl,
		  type: 'POST', 
		  data: {
			action: 'filter_handler', 
			formData: formData, 
		  },
		  beforeSend: function (xhr) {
			$('.event-block').css('opacity', '.5');
		  },
		  success: function(response) {
					$('.event-list').html(response.data.result);
		  },
		  complete: function (complete) {
			$('.event-block').removeAttr('style');
			$(window).attr('requestRunning', false);
		  },
		  error: function(error) {
			// Обробка помилки відправлення
			console.error('Помилка відправки:', error);
		  }
		});
			
	}

	$('.js-filter-block__form').on('submit',function(e){
		e.preventDefault();	
		ajaxFilterHandler($(this).serializeArray());
	})

}( jQuery ) );