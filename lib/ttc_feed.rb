require 'ttc_feed/ttc_urls'
require 'faraday'
require 'nokogiri'

module TtcFeed
  def self.streetcar_xml_data(last_timestamp = nil)
    [
      ["512", Faraday.get(TtcUrls.vehicle_locations("512", last_timestamp)).body]
    ]
  end

  def self.num_vehicles(route_id)
    body = Faraday.get(TtcUrls.vehicle_locations(route_id)).body
    doc = Nokogiri::XML(body)
    doc.css("vehicle").length
  end
end