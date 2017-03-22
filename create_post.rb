require 'faraday'
require 'json'

def post_data
  { description: "I'll see you in court" }
end

def make_json(hash)
  JSON.generate(hash)
end

def post_post(body)
  Faraday.post "http://birdeck.herokuapp.com/api/v1/posts.json" do |req|
    req.headers['Content-Type'] = 'application/json'
    req.body = body
  end
end


post_json = make_json(post_data)
post_post(post_json)
