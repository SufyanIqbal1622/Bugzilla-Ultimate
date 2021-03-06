# frozen_string_literal: true

class Bug < ApplicationRecord
  attr_accessor :remove_image

  has_one_attached :image
  has_many :comments, as: :commentable

  belongs_to :project

  validates :status, inclusion: { in: ['new', 'in-progress', 'in-review', 'fixed'] }

  STATUS_OPTIONS = [
    ['New', 'new'],
    ['In progress', 'in-progress'],
    ['In review', 'in-review'],
    ['Fixed', 'fixed']
  ]

  def badge_color
    case status
    when 'new' then 'secondary'
    when 'in-progress' then 'info'
    when 'in-review' then 'warning'
    else 'success'
    end
  end
end
