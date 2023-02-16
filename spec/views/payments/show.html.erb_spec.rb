require 'rails_helper'

RSpec.describe "payments/show", type: :view do
  before(:each) do
    assign(:payment, Payment.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
