require 'rails_helper'

RSpec.describe "LinksLists", type: :request do
  describe "GET /links_lists" do
    it "works! (now write some real specs)" do
      get links_lists_path
      expect(response).to have_http_status(200)
    end
  end
end
