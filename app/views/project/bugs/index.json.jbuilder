# frozen_string_literal: true

json.array! @project_bugs, partial: 'project_bugs/project_bug', as: :project_bug
