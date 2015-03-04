require 'rails_helper'

RSpec.describe "appointments/index", type: :view do
  before(:each) do
    assign(:appointments, [
      Appointment.create!(
        :who => "Who",
        :where => "Where",
        :what => "What"
      ),
      Appointment.create!(
        :who => "Who",
        :where => "Where",
        :what => "What"
      )
    ])
  end

  it "renders a list of appointments" do
    render
    assert_select "tr>td", :text => "Who".to_s, :count => 2
    assert_select "tr>td", :text => "Where".to_s, :count => 2
    assert_select "tr>td", :text => "What".to_s, :count => 2
  end
end
