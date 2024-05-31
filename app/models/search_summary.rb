class SearchSummary < ApplicationRecord
    validates :ip, :query, presence: true
  end
  