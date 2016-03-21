require 'rails_helper'

RSpec.describe AnswersController, type: :controller do
  it { should route('get', '/questions/1/answers').to(action: :index, question_id: 1)}
  it { should route('post', '/questions/1/answers').to(action: :create, question_id: 1)}
  it { should route('get', '/questions/1/answers/new').to(action: :new, question_id: 1)}
  it { should route('get', '/questions/1/answers/1').to(action: :show, id: 1, question_id: 1)}
  it { should route('get', '/questions/1/answers/1/edit').to(action: :edit, id: 1, question_id: 1)}
  it { should route('patch', '/questions/1/answers/1').to(action: :update, id: 1, question_id: 1)}
  it { should route('put', '/questions/1/answers/1').to(action: :update, id: 1, question_id: 1)}
  it { should route('delete', '/questions/1/answers/1').to(action: :destroy, id: 1, question_id: 1)}
end
