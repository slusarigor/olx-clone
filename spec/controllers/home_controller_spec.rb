require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe "GET index" do
    it "renders the :index template" do
      expect(get: root_url).to route_to(
                                                   controller: "home",
                                                   action: "index")
    end

    it "renders the :index template" do
      expect(get: root_url).to render_template("index2")
    end
  end
end
