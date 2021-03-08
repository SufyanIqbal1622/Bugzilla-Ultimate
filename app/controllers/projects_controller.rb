# frozen_string_literal: true

class ProjectsController < InheritedResources::Base
  private

  def project_params
    params.require(:project).permit(:title, :decription)
  end
end
