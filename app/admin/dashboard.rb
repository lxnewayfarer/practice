ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
     columns do
      column do
        panel "Recent genres" do
          ul do
            Genre.last(5).map do |group|
              li link_to(group.name)
            end
          end
        end
      end
      column do
        panel "Recent countries" do
          ul do
            Country.last(5).map do |group|
              li link_to(group.name)
            end
          end
        end
      end
      column do
        panel "Recent groups" do
          ul do
            Group.last(5).map do |group|
              li link_to(group.name)
            end
          end
        end
      end
      column do
        panel "Recent albums" do
          ul do
            Album.last(5).map do |group|
              li link_to(group.name)
            end
          end
        end
      end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
     end
  end # content
end
