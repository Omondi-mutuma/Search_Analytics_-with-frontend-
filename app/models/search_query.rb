class SearchQuery < ApplicationRecord
    validates :ip, :query, presence: true
  end
  