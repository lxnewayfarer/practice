ActiveAdmin.register Group do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name
  #
  # or
  #
  # permit_params do
  #   permitted = [:name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :name, country_ids: []
  index do
    selectable_column
    id_column
    column :name
    column :countries do |group|
      table_for group.countries.order('name ASC') do
        column do |country|
          country.name
        end
       end
    end
  end
  
  show do
    attributes_table do
      row :name
      table_for group.countries.order('name ASC') do
        column "Countries" do |country|
          link_to country.name, [ :admin, country ]
        end
      end
    end
  end
  
  form do |f|
    f.inputs "Add/Edit Article" do
      f.input :name
      f.input :countries, :as => :check_boxes
    end
    actions
  end
end
