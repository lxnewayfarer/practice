ActiveAdmin.register AdminUser do
  before_action :require_admin
  permit_params :name, :contacts, :email, :role, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :role
    column :contacts
    column :created_at
    actions
  end

  filter :email
  filter :name
  filter :role
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :name
      f.input :contacts
      f.input :role
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  

end

private
 
  def require_admin
    unless current_admin_user.role == 'admin'
      flash[:error] = "You must be admin to access this section"
      redirect_to admin_user_session_path # halts request cycle
    end
  end