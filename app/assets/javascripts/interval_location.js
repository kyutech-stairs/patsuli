  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(
      // success callback
      function(position) {
        $("#interval_latitude").val(position.coords.latitude)
        $("#interval_longitude").val(position.coords.longitude)
      },
      // error callback
      function(position) {
        alert( "can't get position" );
      }
    )
  }else{
    alert("geolocation api に対応してません")
  }
