require 'rails_helper'

RSpec.describe 'tasks/show', type: :view do
  before(:each) do
    @task = assign(:task, Task.create!(
                            title: 'Title',
                            status: 2,
                            user_id: 3
                          ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end