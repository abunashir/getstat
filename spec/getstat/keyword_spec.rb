require "spec_helper"

RSpec.describe Getstat::Keyword do
  describe ".list" do
    it "retrieves the list of keywords" do
      stub_keyword_list_api(123)
      keywords = Getstat::Keyword.list(site_id: 123)

      expect(keywords["Result"].count).to eq(1)
      expect(keywords["Result"].first["Id"]).not_to be_nil
      expect(keywords["Result"].first["KeywordMarket"]).to eq("IE-en")
      expect(keywords["Result"].first["Keyword"]).to eq("s-hertogenbosch")
    end
  end
end
