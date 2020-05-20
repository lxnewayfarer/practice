ActiveAdmin.register Album do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :release, :group_id, :cover, genre_ids: []
  index do
    selectable_column
    id_column
    column :name
    column :release
    column :cover
    column :genres do |album|
      table_for album.genres.order('name ASC') do
        column do |genre|
          genres.name
        end
       end
    end
  end
  show do
    attributes_table do
      row :name
      table_for album.genres.order('name ASC') do
        column "Genres" do |genre|
          link_to genre.name, [ :admin, genre ]
        end
      end
    end
  end
  
  form do |f|
    f.inputs "Add/Edit Album" do
      f.input :name
      f.input :group
      f.input :release
      f.input :cover
      f.input :genres, :as => :check_boxes
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
