ActiveAdmin.register Category do
  menu :label => "Danh Muc"
  permit_params :name
  index do
    selectable_column
    id_column
    column :name
    actions
  end
  filter :id
  filter :name
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
