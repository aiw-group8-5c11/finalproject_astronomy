ActiveAdmin.register Lienket do
  menu :label => "Website liên kết"
  menu :parent => "Nhiệm vụ thám hiểm"
  permit_params :name, :url, :mission_id
  index do
    selectable_column
    id_column
    column :name
    column :mission_id
    column :url
    actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
