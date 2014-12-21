ActiveAdmin.register Detail do
  menu :parent=> "TP vu tru"
  permit_params :name, :description,:element_id
  index do
    selectable_column
    id_column
    column :name
    column :description
    column :element_id
    actions
  end

  filter :name
  filter :id
  filter :element_id

  form :html => {:multipart => true} do |f|
    f.inputs do
      f.input :name

      f.input :element_id, :as => :select, :collection => Element.all.collect {|element| [element.name, element.id] }

      f.input :description, as: :wysihtml5
    end

    f.actions

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
