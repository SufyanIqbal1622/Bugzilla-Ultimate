# frozen_string_literal: true

json.array! @project_features, partial: 'project_features/project_feature', as: :project_feature
