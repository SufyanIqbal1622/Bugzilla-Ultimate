# frozen_string_literal: true

json.extract! project_bug, :id, :problem_statment, :repro, :result, :expected_result, :status, :project_id, :image,
              :created_at, :updated_at

json.url project_bug_url(project_bug, format: :json)
