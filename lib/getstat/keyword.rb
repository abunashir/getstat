module Getstat
  class Keyword
    # List keywords
    #
    # List the keywords for a specific site id
    # @params site_id The site id as hash agrument
    # @params params [Hash] Other params as a Hash
    # @return [Sawyer::Resource]
    #
    def self.list(site_id:, params: {})
      keywords = Request.get("keywords/list", query: params.merge(site_id: site_id))
      keywords["Response"]
    end
  end
end
