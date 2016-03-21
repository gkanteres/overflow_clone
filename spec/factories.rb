FactoryGirl.define do
  factory :user do
    
  end
  # factory :user do
  #   username 'test_user'
  #   email 'test@example.com'
  #   password 'f4k3p455w0rd'
  # end

  factory :question do
    question 'Test Question'
    # user_id 1

    factory :question_with_answer do
      after(:create) do |question|
        create(:answer, question: question)
      end
    end
  end

  factory :answer do
    # user_id 1
    answer 'Test Answer'
  end
end
