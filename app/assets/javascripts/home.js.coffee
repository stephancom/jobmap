# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

map = {}
myMarker = {}
boundRect = {}

getLocation = () ->
  if navigator.geolocation
    navigator.geolocation.watchPosition showPosition, errorPosition, {maximumAge: 1000}
  else
    $('#location-error').html "Geolocation is not supported by this browser."

errorPosition = (error) ->
  x = $('#location-error')
  switch error.code
    when error.PERMISSION_DENIED
      x.html "You denied location."
    when error.POSITION_UNAVAILABLE
      x.html "No location."
    when error.TIMEOUT
      x.html "Location timed out."
    when error.UNKNOWN_ERROR
      x.html "unknown error." 
showPosition = (position) ->
  $('#location-error').html ''

  lat = position.coords.latitude
  lon = position.coords.longitude

  latlon = new google.maps.LatLng(lat, lon)
  map.setCenter latlon
  myMarker.setPosition latlon

window.showBox = (p1, p2) ->
  bnd = new google.maps.LatLngBounds p1, p2
  boundRect.setBounds bnd

$(document).on 'ready page:load page:change', ->
  map = new google.maps.Map $('#mapholder')[0], 
    zoom: 17,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  myMarker = new google.maps.Marker map: map
  boundRect = new google.maps.Rectangle map: map

  getLocation()


