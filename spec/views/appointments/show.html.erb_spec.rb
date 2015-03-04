require 'rails_helper'

RSpec.describe "appointments/show", type: :view do
  before(:each) do
    @appointment = assign(:appointment, Appointment.create!(
      :who => "Who",
      :where => "Where",
      :what => "What"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Who/)
    expect(rendered).to match(/Where/)
    expect(rendered).to match(/What/)
  end
end
