FactoryGirl.define do
  factory :product, class: 'Product' do
    name Faker::App.name
  end
end
