require 'faraday'
require 'json'

def get_post(id)
  Faraday.get("http://birdeck.herokuapp.com/api/v1/posts/#{id}").body
end

def parse_json(json)
  JSON.parse(json, symbolize_names: true)
end

def render_post(post)
  puts "id: #{post[:id]}"
  puts "description: #{post[:description]}"
  puts "created_at: #{post[:created_at]}"
  puts "updated_at: #{post[:updated_at]}"
end

post_json = get_post(324)
post_data = parse_json(post_json)
render_post(post_data)


#####################################################################

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
