var pos = {};
var label = "T";

$(document).on("turbolinks:load", function(){
  initMap();
});

function initMap() {


        // Try HTML5 geolocation.
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            pos = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };
            var map = new google.maps.Map(document.getElementById('map'), {
              center: pos,
              zoom: 16
            });
            map.setCenter(pos);
            // add marker
            addMarker(map.center, map);
            // draw red circle
            drawCircle(map , 2);

          }, function() {
          });
        } else {
          var infoWindow = new google.maps.InfoWindow({map: map});
          infoWindow.setPosition(pos);
          infoWindow.setContent('Location found.');
          handleLocationError(false, infoWindow, map.getCenter());
        }
      }

      function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
                              'Error: The Geolocation service failed.' :
                              'Error: Your browser doesn\'t support geolocation.');
      }
var drawCircle = function ( map , r ){
  var cityCircle = new google.maps.Circle({
    strokeColor: '#FF0000',
    strokeOpacity: 0.8,
    strokeWeight: 1,
    fillColor: '#FF0000',
    fillOpacity: 0.35,
    map: map,
    center: map.center,
    radius: Math.sqrt( r )  * 100
  });
};


function addMarker(location, map) {
       // Add the marker at the clicked location, and add the next-available label
       // from the array of alphabetical characters.
       var marker = new google.maps.Marker({
         position: location,
         label: label,
         map: map
       });
     }
