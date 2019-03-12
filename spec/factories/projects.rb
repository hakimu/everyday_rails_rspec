FactoryBot.define do
  factory :project do
    sequence(:name) {|n| "Project #{n}"}

    description "A test project."
    due_on 1.week.from_now
    association :owner

    trait :invalid do
      name nil 
    end
  end
end

# project = FactoryBot.build(:project)

# puts "===#{project}====="
