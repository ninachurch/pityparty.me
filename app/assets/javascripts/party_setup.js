$(document).ready( function(event, data) {

  var doShit = function(event, data) {
    $.rails.ajax
    var partyToAppend = renderTemplate(data.cheerups_response)
    console.log(data.cheerups_response)
    $(".request-container").append(partyToAppend)
  }

  $("form").on('ajax:success', doShit)
})


////////////VIEW/////////////////

var renderTemplate = function(visualArray){
  var appendedParty = "";
  var visuals = visualArray
  for (var index = 0; index < visuals.length; index++){
    appendedParty += '<img src=' + visuals[index] + '/>';
  }
  return appendedParty
};