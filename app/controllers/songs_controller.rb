class SongsController < ApplicationController

    def index 
        @songs = Song.all 
    end
    
    def update
        @song = Song.find(params[:id])
        @song.update!(song_params)
        redirect_to song_path
      end
    
    
    def show
        @song = Song.find(params[:id])
    end
    
    def new
        @song = Song.new
    end
    
    def edit 
       @song = Song.find(params[:id])
    end
    
    def create
        @song = Song.new(song_params)
        @song.save
        redirect_to songs_path #redirect to all genres
    end
    
    
    def song_params
        params.require(:song).permit(:name,:artist_id,:genre_id)
      end
    
    
    
    
    
    
    
    end
    