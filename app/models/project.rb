# frozen_string_literal: true

class Project < ApplicationRecord
  has_many :bugs, dependent: :nullify
  has_many :features, dependent: :nullify
  belongs_to :user
  enum status: { not_started: 0, designing: 1, development: 2, testing: 3, completed: 4 }

  def badge_color
    case status
    when 'not_started' then 'secondary'
    when 'designing' then 'warning'
    when 'development' then 'info'
    when 'testing' then 'warning'
    else 'success'
    end
  end
end
