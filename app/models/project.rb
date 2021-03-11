# frozen_string_literal: true

class Project < ApplicationRecord
  has_many :bugs, dependent: :nullify
  has_many :features, dependent: :nullify
  belongs_to :user
  enum status: { inreview: 0, designing: 1, develoment: 2, testing: 3, completed: 4 }
end
