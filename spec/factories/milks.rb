FactoryBot.define do
  factory :milk do
    condition_id              { 2 }
    amount_id                 { 2 }
    time { '09:00:00' }
    association :user

    after(:build) do |milk|
      milk.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
