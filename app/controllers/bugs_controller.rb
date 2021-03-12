# frozen_string_literal: true

class BugsController < ApplicationController
  before_action :set_project
  before_action :set_bug, only: %i[show edit update destroy]

  # GET projects/1/bugs
  def index
    @bugs = @project.bugs
  end

  # GET projects/1/bugs/1
  def show; end

  # GET projects/1/bugs/new
  def new
    @bug = @project.bugs.build
  end

  # GET projects/1/bugs/1/edit
  def edit; end

  # POST projects/1/bugs
  def create
    @bug = @project.bugs.build(bug_params)

    if @bug.save
      redirect_to([@bug.project, @bug], notice: 'Bug was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT projects/1/bugs/1
  def update
    if @bug.update(bug_params)
      redirect_to([@bug.project, @bug], notice: 'Bug was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE projects/1/bugs/1
  def destroy
    @bug.destroy

    redirect_to project_bugs_url(@project)
  end

  private

  def set_project
    @project = current_user.projects.find(params[:project_id])
  end

  def set_bug
    @bug = @project.bugs.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def bug_params
    params.require(:bug).permit(:problem_statment, :repro, :result, :expected_result, :status, :project_id, :remove_image,
                                :image)
  end
end
