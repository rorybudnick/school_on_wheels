RSpec.describe TutorsController do
  describe "POST #create" do
    it "creates a tutor" do
      params = {first_name: "Rory"}
      post :create, params
    end
  end
end
