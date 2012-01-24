require "ttc_feed/version"
require "ttc_feed/zurl"

module TtcUrls
  def self.base
    Zurl.new("http://webservices.nextbus.com/service/publicXMLFeed")
  end

  def self.route_list
    base.command("routeList").a("ttc").to_s
  end

  # route_tag = "512"
  def self.route_config(route_tag)
    base.command("routeConfig").a(agency_tag).r(route_tag).to_s
  end

  # stop_id = "14935"
  # route_tag = "512"
  def self.predictions(stop_id, route_tag)
    base.stopId(stop_id).r(route_tag).a("ttc").to_s
  end

  # route_tag = "512"
  def self.vehicle_locations(route_tag, last_timestamp = nil)
    url = base.command("vehicleLocations").a("ttc").r(route_tag)

    url = url.t(last_timestamp) if last_timestamp

    url.to_s
  end

end
