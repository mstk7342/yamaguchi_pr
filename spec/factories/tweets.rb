FactoryBot.define do
  factory :tweet do
      name              { 'さんぷる' }
      text       { 'さんぷる' }
      category_id       { 2 }
      city_id         { 2 }
      association :user
  
      after(:build) do |tweet|
        tweet.image.attach(io: File.open('public/image/test_image.png'), filename: 'test_image.png')
      end
  end
end
