# spec/jobs/process_search_queries_job_spec.rb
require 'rails_helper'

RSpec.describe ProcessSearchQueriesJob, type: :job do
  before do
    create(:search_query, ip: "127.0.0.1", query: "How is")
    create(:search_query, ip: "127.0.0.1", query: "How is emil hajric")
    create(:search_query, ip: "127.0.0.1", query: "How is emil hajric doing")
  end

  it 'removes incomplete queries and keeps the final meaningful query' do
    expect {
      described_class.perform_now("127.0.0.1")
    }.to change { SearchSummary.count }.by(1)
    
    summary = SearchSummary.last
    expect(summary.query).to eq("How is emil hajric doing")
    expect(summary.count).to eq(1)
  end
end
