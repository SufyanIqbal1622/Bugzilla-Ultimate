# frozen_string_literal: true

class Bug < ApplicationRecord
  attr_accessor :remove_image
  has_one_attached :image

  belongs_to :project
end
