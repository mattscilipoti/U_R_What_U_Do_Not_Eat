$(document).ready(function() {
  $('form#search input[type=submit]').on("click", searchData);
})

// mms: seeResults?  Where is this instantiated?
seeResults.addEventListener('click', function(event){
   event.preventDefault();
   $.ajax({
     type: "GET",
     dataType: "json",
     url: window.location.origin  + "/restrictions.json"
     }).done(function(response){

})

}

// mms: where is this used?
function displayResults(results) {
  var container = $("#results");
  container.empty();
  results.forEach(function(result) {
    container.append("<li><a href='" + result.href + "'>" + result.name + "</a></li>");
  })
}

var chart = new Chart(".chart", foodChart)

<%= pie_chart [["Allergy", 10], ["Religion", 5]] %>
