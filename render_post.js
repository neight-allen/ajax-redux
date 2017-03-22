
function get_post(){
  return localStorage.getKey('post');
}

function parse_json(json){
  return JSON.parse(json);
}

function render_post(post){
  console.log(`id: ${post['id']}`);
  console.log(`description: ${post['description']}`);
  console.log(`created_at: ${post['created_at']}`);
  console.log(`updated_at: ${post['updated_at']}`);
}

var post_json = get_post();
var post_data = parse_json(post_json);
render_post(post_data);
