
$(function()) {                                                                                         
  $('button').click(function(){
        $.ajax({
                url: '/myCompletedChallenge',
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
