# frozen_string_literal: true

json.extract! project, :id, :title, :descreption, :status, :created_at, :updated_at
json.url project_url(project, format: :json)
