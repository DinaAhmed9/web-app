require "net/http"
class GithubRepositoryService
  def self.search_github_repositories(search_keyword, page)
    uri = URI.parse("https://api.github.com/search/repositories?q=#{search_keyword}&page=#{page}&per_page=20")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    response = http.get(uri.request_uri, { "Accept" => "application/vnd.github.v3+json" })
    JSON.parse(response.body)
  end
end
