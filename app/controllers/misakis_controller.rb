class MisakisController < ApplicationController
        def index
        end
      
        def new
          @misaki = Misaki.new
        end
      
        def show
          @misaki = Misaki.find_by(id: params[:id])
        end
      
        def create
          @misaki = Misaki.new(misaki_params)
          params[:misaki][:question] ? @misaki.question = params[:misaki][:question].join("") : false
          if @misaki.save
              flash[:notice] = "診断が完了しました"
              redirect_to misaki_path(@misaki.id)
          else
              redirect_to :action => "new"
          end
        end
      
      private
        def misaki_params
            params.require(:misaki).permit(:id, question: [])
        end
      
      
end
