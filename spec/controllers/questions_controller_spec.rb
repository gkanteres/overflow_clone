require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do
  it { should route('get', '/questions').to(action: :index)}
  it { should route('post', '/questions').to(action: :create)}
  it { should route('get', '/questions/new').to(action: :new)}
  it { should route('get', '/questions/1').to(action: :show, id: 1)}
  it { should route('get', '/questions/1/edit').to(action: :edit, id: 1)}
  it { should route('patch', '/questions/1').to(action: :update, id: 1)}
  it { should route('put', '/questions/1').to(action: :update, id: 1)}
  it { should route('delete', '/questions/1').to(action: :destroy, id: 1)}
end
