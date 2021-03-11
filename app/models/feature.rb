# frozen_string_literal: true

class Feature < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ['not-started', 'in-progress', 'in-review', 'complete'] }

  STATUS_OPTIONS = [
    ['Not started', 'not-started'],
    ['In progress', 'in-progress'],
    ['In review', 'in-review'],
    ['Complete', 'complete']
  ]
end
