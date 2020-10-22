require 'net/http'

class TestLoginNodejs
  def perform
    Net::HTTP.get("0.0.0.0", "/?account=#{ENV['ACCOUNT']}&password=#{ENV['PASSWORD']}", 8080)
  end
end
