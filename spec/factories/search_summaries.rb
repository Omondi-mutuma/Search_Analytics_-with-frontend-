FactoryBot.define do
    factory :search_summary do
      ip { "127.0.0.1" }
      query { "Example query" }
      count { 1 }
    end
  end
  