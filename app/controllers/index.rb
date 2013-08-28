get '/' do
  erb :index
end

get '/create_post' do
  @category = params["category"]
  @title = params["title"]
  @description = params["description"]
  @price = params["price"]
  @email = params["email"]
  post = Post.create(:title => @title, :description => @description, :price => @price,
    :email => @email)
  # post.categories.create(:name => @category)
  # this doean't work :(
  erb :create_post
end

post '/submitted_form' do
  erb :submitted_form
end
