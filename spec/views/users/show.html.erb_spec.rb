require 'rails_helper'

RSpec.describe 'users/show.html.erb', type: :view do
  it "renders 'show' template" do
    render template: 'users/show'
    expect(rendered).to match(/Here is a user by id/)
  end
end
