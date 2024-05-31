# spec/factories/search_queries.rb
FactoryBot.define do
  factory :search_query do
    ip { "127.0.0.1" }
    query { "Example query" }
  end
end
