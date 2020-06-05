ActiveAdmin.register Song do

  permit_params :name, :audio, album_ids:[]
  index do
    selectable_column
    id_column
    column :name
    column :albums
    column :audio
  end
  show do
    attributes_table do
      row :name
      row :albums
      row :audio
    end
  end
  
  form do |f|
    f.inputs "Add/Edit Album" do
      f.input :name
      f.input :audio
      f.input :albums, :as => :check_boxes
    end
    actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :release, :group_id, :cover]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
