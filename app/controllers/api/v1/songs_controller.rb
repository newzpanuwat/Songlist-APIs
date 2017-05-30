class Api::V1::SongsController < ApplicationController
  respond_to :json
  skip_before_action :verify_authenticity_token

    def index
        respond_with Song.all
    end

    def show
        respond_with Song.find(params[:id])
    end

    def create
        song = Song.new(song_params)
        if song.save
            render json: song, status: 201
        else
            render json: {errors: song.errors }, status: 422
        end
    end

    def update
        song = Song.find(params[:id])
        if song.update(song_params)
            render json: song, status: 201
        else
            render json: {errors: user.errors}, status: 422
        end

    end


    def destroy
        song = Song.find(params[:id])
        song.destroy
        head 204
        
    end


    private 
    def song_params
        params.require(:song).permit(:name, :album, :genres, :artist)
    end

end
