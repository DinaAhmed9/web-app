class GithubRepositoriesController < ApplicationController
  include GithubRepositoriesHelper
  before_action :intialize_data
  layout false

  # GET /github_repositories
  def index
    if @search_keyword && !@search_keyword.squish.empty?
      parsed_response_body = GithubRepositoryService.search_github_repositories(@search_keyword, @page)
      if parsed_response_body.keys.include?("items")
        @github_repositories = parsed_response_body["items"]
      else
        @error_message = true
      end
    end
  end
end
