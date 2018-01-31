module Getstat
  module FakeGetstatApi
    def stub_keyword_list_api(site_id)
      stub_api_response(
        :get,
        "keywords/list?format=json&site_id=#{site_id}",
        filename: "keywords-list",
      )
    end

    private

    def stub_api_response(method, endpoint, filename:, status: 200, data: nil)
      stub_http_request(method, getstat_endpoint(endpoint)).
        to_return(response_with(filename: filename, status: status))
    end

    def response_with(filename:, status:)
      {
        status: status,
        body: getstat_fixture(filename),
        headers: { content_type: "application/json" },
      }
    end

    def getstat_fixture(filename)
      filename = [filename, "json"].join(".")
      file_path = File.join(Getstat.root, "spec", "fixtures", filename)

      File.read(File.expand_path(file_path, __FILE__))
    end

    def getstat_endpoint(endpoint)
      config = Getstat.configuration
      @host ||= "https://#{config.api_host}/#{config.base_path}/#{endpoint}"
    end
  end
end
