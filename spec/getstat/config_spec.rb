require "spec_helper"

RSpec.describe  Getstat::Config do
  describe ".configuration" do
    it "retrives the current client configuration" do
      api_key = "super-secret-api-key"
      api_host = "trivago.getstat.com"

      Getstat.configure do |getstat_config|
        getstat_config.api_key = api_key
        getstat_config.api_host = api_host
      end

      config = Getstat.configuration
      expect(config.api_host).to eq(api_host)
      expect(config.base_path).to eq("api/v2/#{api_key}")
    end
  end
end
