<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Driving2.aspx.cs" Inherits="Driving2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head id="Head1" runat="server">
<meta name="viewport" content="initial-scale=1.0, user-scalable=no"/>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<title>Google Maps JavaScript API v3 Example: Optimized Directions</title>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<script type="text/javascript">
  var directionDisplay;
  var directionsService = new google.maps.DirectionsService();
  var map;
  var origin = null;
  var destination = null;
  var waypoints = [];
  var markers = [];
  var directionsVisible = false;

  function initialize() {
    directionsDisplay = new google.maps.DirectionsRenderer();
    var chicago = new google.maps.LatLng(19.082063,72.888215);
    var myOptions = {
      zoom:14,
      mapTypeId: google.maps.MapTypeId.ROADMAP,
      center: chicago
    }
    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
    directionsDisplay.setMap(map);
    directionsDisplay.setPanel(document.getElementById("directionsPanel"));
    
    google.maps.event.addListener(map, 'click', function(event) {
      if (origin == null) {
        origin = event.latLng;
        addMarker(origin);
      } else if (destination == null) {
        destination = event.latLng;
        addMarker(destination);
      } else {
        if (waypoints.length < 9) {
          waypoints.push({ location: destination, stopover: true });
          destination = event.latLng;
          addMarker(destination);
        } else {
          alert("Maximum number of waypoints reached");
        }
      }
    });
  }

  function addMarker(latlng) {
    markers.push(new google.maps.Marker({
      position: latlng, 
      map: map,
      icon: "http://maps.google.com/mapfiles/marker" + String.fromCharCode(markers.length + 65) + ".png"
    }));    
  }

  function calcRoute() {
    if (origin == null) {
      alert("Click on the map to add a start point");
      return;
    }
    
    if (destination == null) {
      alert("Click on the map to add an end point");
      return;
    }
    
 
    var request = {
        origin: origin,
        destination: destination,
        waypoints: waypoints,
        travelMode: google.maps.DirectionsTravelMode.DRIVING,
        avoidHighways: document.getElementById('highways').checked,
        avoidTolls: document.getElementById('tolls').checked,
        provideRouteAlternatives: true
    };
    
    directionsService.route(request, function(response, status) {
      if (status == google.maps.DirectionsStatus.OK) {
        directionsDisplay.setDirections(response);
      }
    });
    
    clearMarkers();
    directionsVisible = true;
  }
  
  function updateMode() {
    if (directionsVisible) {
      calcRoute();
    }
  }
  
  function clearMarkers() {
    for (var i = 0; i < markers.length; i++) {
      markers[i].setMap(null);
    }
  }
  
  function clearWaypoints() {
    markers = [];
    origin = null;
    destination = null;
    waypoints = [];
    directionsVisible = false;
  }
  
  function reset() {
    clearMarkers();
    clearWaypoints();
    directionsDisplay.setMap(null);
    directionsDisplay.setPanel(null);
    directionsDisplay = new google.maps.DirectionsRenderer();
    directionsDisplay.setMap(map);
    directionsDisplay.setPanel(document.getElementById("directions_panel"));    
  }
</script>
    <style type="text/css">
        .style1
        {
            width: 249px;
        }
        .style2
        {
            font-size: large;
            font-weight: bold;
            font-family: "Times New Roman", Times, serif;
        }
        .style
       {
            width:200px;
            height:45px;
            font-size:20px;
            background:#3e9ad2;
            -webkit-box-shadow:0 0 4px #000;/*safari and Chrome*/
            -moz-box-shadow:0 0 4px #000; /*Mozilla*/
            -o-box-shadow:0 0 4px #000; /*Opera*/
            -ms-box-shadow:0 0 4px #000; /*Ms IE*/
            box-shadow:0 0 4px #000; /*W3C*/
            -webkit-border-radius:15px;/*safari and Chrome*/
            -moz-border-radius:15px; /*Mozilla*/
            -o-box-border-radius:15px; /*Opera*/
            -ms-box-border-radius:15px; /*Ms IE*/
            border-radius:15px; /*W3C*/
            background-image:-webkit-linear-gradient(top,#ffffff 0%,#3e9ad2 100%);
            background-image:-moz-linear-gradient(top,#ffffff 0%,#3e9ad2 100%);
            background-image:-o-linear-gradient(top,#ffffff 0%,#3e9ad2 100%);
            background-image:-ms-linear-gradient(top,#ffffff 0%,#3e9ad2 100%);
            background-image:linear-gradient(top,#ffffff 0%,#3e9ad2 100%);
            font-size="large";
            font-weight="bold";
            font-family=" Times New Roman";
	   }
    </style>
</head>
<body onload="initialize()" style="font-family: sans-serif;" oncontextmenu="return false" background="App_Themes/Default/Images/grid_DominikKiss_SubtlePatterns.jpg">
  <table style="width: 584px">
    <tr>
      <td><input type="checkbox" id="highways" /><span class="style2">Avoid highways</span></td>
      <td class="style1">

          <input type="checkbox" id="tolls" /><span class="style2">Avoid tolls</span></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
  
      <td class="style1">&nbsp;</td>
    </tr>
    <tr>
      <td><input type="button" value="RESET" onclick="reset()" 
              style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #FFFFFF; background-color: #3399FF; width: 252px;" class="style"/></td>
      <td class="style1"><input type="button" value="GET DIRECTIONS" 
              onclick="calcRoute()" 
              style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #FFFFFF; background-color: #3399FF; width: 252px;" class="style"/></td>
      <td></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td class="style1">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
  <div id="map_canvas" style="float:left;width:70%;height:811px"></div>
<div style="float:right;width:30%;height:927px; overflow:auto">
  <div id="directions_panel" 
        style="width:100%; height: 894px; font-family: 'TImes New Roman', Times, serif;"></div>
</div>
</body>
</html>



