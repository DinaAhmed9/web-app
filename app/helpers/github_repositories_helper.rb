module GithubRepositoriesHelper
  def intialize_data
    @error_message = nil
    @page = params["page"] ? params["page"].to_i : 1
    @github_repositories = []
    @search_keyword = params["query"]
  end
end
