# frozen_string_literal: true

class Feature < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ['new', 'in-progress', 'in-review', 'complete'] }

  STATUS_OPTIONS = [
    ['New', 'new'],
    ['In progress', 'in-progress'],
    ['In review', 'in-review'],
    ['Complete', 'complete']
  ]

  def badge_color
    case status
      when 'new'
        'secondary'
      when 'in-progress'
        'info'
      when 'in-review'
        'warning'
      when 'complete'
        'success'
    end
  end
end
