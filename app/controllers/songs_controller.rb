class SongsController < ApplicationController
    def index
        @songs = Song.all
        render json: @songs
      end
    

      def show
        set_song
        if @song
            render json: @song, :include => :tasks
        else
            render json: @song.errors
        end
      end

      
      def new
        @song = Song.new
      end


      def create
          @song = Song.create(song_params)
          if @song.save
            render json: @song
          else
            render json: @song.errors
          end
      end
  
    
      def destroy
        set_song
          @song.destroy
            render json: { message: 'Song deleted!' }
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_song
        @song = Song.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def song_params
        params.require(:song).permit(:songname, :url, :user_id)
      end
end
