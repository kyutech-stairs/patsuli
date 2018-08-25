module TweetsHelper
  #google dist
  def distance(lat1, lon1, lat2, lon2)
    radlat1 = deg2rad(lat1)
    radlon1 = deg2rad(lon1)
    radlat2 = deg2rad(lat2)
    radlon2 = deg2rad(lon2)
    r = 6378137.0 # 赤道の半径
    ave_lat = (radlat1 - radlat2) / 2.0
    ave_lon = (radlon1 - radlon2) / 2.0
    r * 2 * Math.asin(Math.sqrt(Math.sin(ave_lat)**2 + Math.cos(radlat1) * Math.cos(radlat2) * Math.sin(ave_lon)**2))
  end
  def deg2rad(deg)
    deg * Math::PI / 180
  end
end
