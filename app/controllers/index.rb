get '/' do
  erb :index
end

get '/create_post' do
  erb :create_post
end

post '/submitted_form' do
  cat = params['new_category'].empty? ? params['category'] : params['new_category']
  @category = Category.where(name: cat).first_or_create
  @title = params["title"]
  @description = params["description"]
  @price = params["price"]
  @email = params["email"]
  @post = Post.create(:title => @title, :description => @description, :price => @price,
    :email => @email, :category => @category)
  erb :submitted_form
end

get '/post_page' do
  erb :post_page
end

get '/:category' do
  @category = Category.where(name: params[:category]).first
  @posts = @category.posts
  erb :posts_in_category
end

get '/category/:title' do
  @post = Post.where(title: params[:title]).first
  erb :post_page
end

