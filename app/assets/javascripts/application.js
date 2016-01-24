// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require gmaps/google
//= require_tree .

// $(document).ready(function(){
// 	getLocation();
//     enterDestination();
// })

// function getLocation() {
//     if (navigator.geolocation) {
//         navigator.geolocation.getCurrentPosition(showPosition);

//     } else {
//         // x.innerHTML = "Geolocation is not supported by this browser.";
//     }
// }
// function showPosition(position) {
//     $('body').append("Latitude: " + position.coords.latitude +
//     "<br>Longitude: " + position.coords.longitude );
//     var coords = {
//     	lat: position.coords.latitude,
//     	long: position.coords.longitude
//     }
//     $.ajax({
//     	url: '/maps',
//     	type: 'get',
//     	data: coords
//     }).done(function(response){})
// }


// function enterDestination() {
//     $(document).on('submit', '.search', function(e) {
//         e.preventDefault();
//         var search = this.serialize;
//         debugger
//         $.ajax({
//             url: '/maps',
//             type: 'get',
//             data: search
//         })
//     })

// }

window.onload = function() {
  var div = document.getElementById('search');
  if (div.style.display !== 'none') {
    div.style.display = 'block';
  } else {
    div.style.display = 'block';
  }
};
