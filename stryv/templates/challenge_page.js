$(function(){
	$('button').click(function(){
        var user = $('#user').val();
		var selected_challenge = $('True').val();
		$.ajax({
			url: '/addChallengeToUser',
			data: $('form').serialize(),
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
