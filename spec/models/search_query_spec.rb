require 'rails_helper'

RSpec.describe SearchQuery, type: :model do
  it { should validate_presence_of(:ip) }
  it { should validate_presence_of(:query) }
end
