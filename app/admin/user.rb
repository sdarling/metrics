ActiveAdmin.register User do
    permit_params :email,:firstname, :lastname, :password,:reset_password_token, :password_confirmation

  index do
    selectable_column
    id_column 
    column :firstname
    column :lastname
    column :email
    column :sign_in_count
    column :last_sign_in_at
    column :superadmin
    actions
  end

  form do |f|
    f.inputs "User Details" do
      f.input :firstname, :label => "First Name"
      f.input :lastname, :label => "Last Name"
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :superadmin, :label => "Super Administrator"
    end
    f.actions
  end

  create_or_edit = Proc.new {
    @user            = User.find_or_create_by(id: params[:id])
    @user.superadmin = params[:user][:superadmin]
    @user.attributes = permitted_params[:user].delete_if do |k, v|
      (k == "superadmin") ||
      (["password", "password_confirmation"].include?(k) && v.empty? && !@user.new_record?)
    end
    if @user.save
      redirect_to :action => :index
    else
      render active_admin_template((@user.new_record? ? 'new' : 'edit') + '.html.erb')
    end
  }
  member_action :create, :method => :post, &create_or_edit
  member_action :update, :method => :put, &create_or_edit

end