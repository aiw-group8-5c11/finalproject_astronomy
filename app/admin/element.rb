ActiveAdmin.register Element do
  menu :parent=> "TP vu tru"
  permit_params :name,:system_id

  index do
    selectable_column
    id_column
    column :name
    column :system_id
    actions
  end

  filter :name
  filter :id

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
