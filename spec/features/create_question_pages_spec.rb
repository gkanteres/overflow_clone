require 'rails_helper'

describe 'the create a question process' do
  it 'creates a new question' do
    #user = FactoryGirl.create(:user)
    #login_as(user, :scope => :user)
    visit root_path
    click_link 'Add a new Question'
    fill_in 'question_question', with: 'Test Question'
    click_on 'Create Question'
    expect(page).to have_content 'Test Question'
  end
end
