# frozen_string_literal: true

class Project < ApplicationRecord
  has_many :features
  belongs_to :user
  enum status: { inreview: 0, designing: 1, develoment: 2, testing: 3, completed: 4 }
end
