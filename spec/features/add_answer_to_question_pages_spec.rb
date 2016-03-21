require 'rails_helper'

describe 'the add answer to a question process' do
  it 'adds answer to a question' do
    #user = FactoryGirl.create(:user)
    question = FactoryGirl.create(:question)
    #login_as(user, :scope => :user)
    visit questions_path
    click_link 'Answer question'
    fill_in 'answer_answer', with: 'This is a test answer.'
    click_button 'Create Answer'
    expect(page).to have_content('This is a test answer.')
  end
end
