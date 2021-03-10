# frozen_string_literal: true

class ProjectsController < ApplicationController

  def index
    @projects = current_user.projects
  end

  private

  def project_params
    params.require(:project).permit(:title, :decription, :status, :user_id)
  end
end
