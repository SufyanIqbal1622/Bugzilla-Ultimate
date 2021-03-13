class CommentsController < ApplicationController

  def create

      redirect_to root_url

  end

  private

    def comment_params
      params.require(:comment).permit(:content)
    end
end
