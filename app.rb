require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Course.all
      erb :show
    end
  end
end
