# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    def project_manager?
      type == 'ProjectManager'
    end

    def developer?
      type == 'Developer'
    end

    def QA?
      type == 'QA'
    end

  end
