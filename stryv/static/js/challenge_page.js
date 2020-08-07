$(function() {	
$('button').click(function(){
		$.ajax({
			url: '/checkoutChallenge',
			data: {
        id: $(this).val() // $("#test").val() 
      }, 
			type: 'POST',
			success: function(response){
				console.log(response);
			},
			error: function(error){
				console.log(error);
			}
		});
	});
});
