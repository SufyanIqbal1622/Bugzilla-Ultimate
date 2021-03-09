# frozen_string_literal: true

ActiveAdmin.register ProjectManager do
  index do
    column :email
    column :type
    column :created_at
    column :updated_at
    actions
  end
  show do
    panel 'Project Manager Details' do
      table_for project_manager do
        column :email
        column :type
        column :created_at
        column :updated_at
      end
    end
    active_admin_comments
  end
  controller do
    def permitted_params
      params.permit!
    end
  end
  form title: 'New Project Manager' do |f|
    f.inputs do
      f.input :email, label: 'Email'
      f.select :type, ['ProjectManager', 'Developer', 'QA']
      f.input :password, label: 'Password'
      f.input :password_confirmation, label: 'Password Confermation'
      actions
    end
  end
  permit_params :email, :password, :password_confirmation
end
