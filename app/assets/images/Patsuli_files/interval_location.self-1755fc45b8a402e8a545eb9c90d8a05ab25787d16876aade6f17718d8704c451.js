var func = function location(){
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(
      // success callback
      function(position) {
        $("#interval_latitude").val(position.coords.latitude)
        $("#interval_longitude").val(position.coords.longitude)
        $("#interval_sub").trigger('click')
      },
      // error callback
      function(position) {
        alert( "can't get position" );
      }
    )
  }else{
    alert("can't get postion")
  }
}
func()
setInterval(function(){
  func()
}, 30000)
