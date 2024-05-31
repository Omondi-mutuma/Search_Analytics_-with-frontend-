# app/jobs/process_search_queries_job.rb
class ProcessSearchQueriesJob < ApplicationJob
  queue_as :default

  def perform(ip)
    queries = SearchQuery.where(ip: ip).order(:created_at)
    final_query = queries.last&.query

    return unless final_query

    summary = SearchSummary.find_or_initialize_by(ip: ip, query: final_query)
    summary.count ||= 0
    summary.count += 1
    summary.save

    queries.destroy_all
  end
end
