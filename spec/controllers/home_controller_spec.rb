require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe "GET index" do
    it "renders the :index template" do
      expect(get: root_url(subdomain: nil)).to route_to(
                                                   controller: "home",
                                                   action: "index")
    end
  end
end
