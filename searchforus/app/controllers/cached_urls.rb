Searchforus::App.controllers :cached_urls do
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  
  get :index do
    @cached_urls = CachedUrl.order('created_at desc').all
    render 'cached_urls/index'
  end

  get :show do
    @cached_url = CachedUrl.find_by_id(params[:id])
    render 'cached_urls/show'
  end

  get :scan do

  end

end
