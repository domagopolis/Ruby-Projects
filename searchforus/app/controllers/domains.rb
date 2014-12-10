Searchforus::App.controllers :domains do
  
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
    @domains = Domain.order('created_at desc').all
    render 'domains/index'
  end

  get :show, :with => :id do
    @domain = Domain.find_by_id(params[:id])
    render 'domains/show'
  end

end
