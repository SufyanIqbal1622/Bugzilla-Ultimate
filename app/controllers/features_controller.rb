# frozen_string_literal: true

class FeaturesController < ApplicationController
  before_action :set_project

  before_action :set_feature, only: %i[show edit update destroy]

  def index
    @features = @project.features
  end

  def show; end

  def new
    @feature = @project.features.build
  end

  def edit; end

  def create
    @feature = @project.features.build(feature_params)

    if @feature.save
      redirect_to(@feature.project)
    else
      render action: 'new'
    end
  end

  def update
    if @feature.update(feature_params)
      redirect_to(@feature.project)
    else
      render action: 'edit'
    end
  end

  def destroy
    @feature.destroy

    redirect_to @project
  end

  private

  def set_project
    @project = current_user.projects.find(params[:project_id])
  end

  def set_feature
    @feature = @project.features.find(params[:id])
  end

  def feature_params
    params.require(:feature).permit(:name, :description, :status, :project_id)
  end
end
