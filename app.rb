class App < Sinatra::Base
    get '/' do
        @images = Image.all
        haml :index
    end
    
    get '/images/:id' do
        @image = Image[params[:id]]
        haml :show
    end
    
     get '/images/delete/:id' do
        @image = Image[params[:id]]
        @image.destroy
        redirect '/'
    end
    
    post '/images' do
        @image = Image.new params[:image]
        @image.save
        redirect '/'
    end
end