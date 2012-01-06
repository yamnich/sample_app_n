require 'spec_helper'

describe "FriendlyForwardings" do

  it "should forward to the requested page after signin" do
    user = Factory(:user)
    visit edit_user_path(user)

    fill_in :email, :with => user.email
    fill_in :password, :with => user.password
    click_button
    response.should render_template('users/edit')
  end
=begin
  describe "GET /friendly_forwardings" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get friendly_forwardings_path
      response.status.should be(200)
    end
  end
=end
end
