# frozen_string_literal: true

json.extract! project_feature, :id, :name, :description, :status, :project_id, :created_at, :updated_at

json.url project_feature_url(project_feature, format: :json)
