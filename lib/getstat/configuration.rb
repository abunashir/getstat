module Getstat
  class Configuration
    attr_accessor :api_key, :api_host, :version

    def initialize
      @api_host ||= "www.getstat.com"
      @version = "v2"
    end

    def base_path
      ["api", version, api_key].join("/")
    end
  end
end
