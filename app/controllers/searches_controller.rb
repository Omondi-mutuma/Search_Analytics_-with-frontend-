class SearchesController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    SearchQuery.create!(ip: request.remote_ip, query: params[:query])
    ProcessSearchQueriesJob.perform_later
    head :ok
  end
end
