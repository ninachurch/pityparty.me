$(document).ready(function(){
  

  $(".submit").on("click", AjaxBringImage)
});


var formatData = function(boxes){
  var returnArray = []
  for (var i = 0; i < boxes.length; i++){
    returnArray.push($(boxes[i]).val())
  }
  return returnArray
}

var AjaxBringImage = function (e){
  e.preventDefault();
  var selectedBoxes = $('input:checked');
  var dataToSend = formatData(selectedBoxes);
  
  $.ajax({
    url: '/party',
    type: 'POST',
    data: {reason_ids: dataToSend}
     })
     .done(function(data) {
      debugger
       console.log("success");
     })
     .fail(function() {
       console.log("error");
     })
     .always(function() {
       console.log("complete");
     });
  }
