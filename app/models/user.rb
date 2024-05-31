# app/models/user.rb
class User < ApplicationRecord
    has_many :search_queries
  end
  