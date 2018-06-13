require 'rest-client'

class DashboardService

	@@uri = "http://localhost:3000"

	def self.newEvent eventType
  	url = @@uri + "/events"
  	payload = { event_type: eventType }.to_json
	  response = RestClient.post(url, payload, headers=getDefaultHeaders())
	  response
  end

  def self.getDefaultHeaders
  	{"Content-Type": "application/json"}
  end

end