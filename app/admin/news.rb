ActiveAdmin.register News do
  menu :label => "Bài viết"
  permit_params :title, :author, :content,:full_content, :category_id
  index do
    selectable_column
    id_column
    column :title
    column :author
    column :content
    column :full_content
    column :category_id
    actions
  end
  filter :id
  filter :title
  filter :author
  filter :category_id
  show do |ad|
    attributes_table do
      row :id
      row :university_cate_id
      row :name
      row :full_content
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

  form :html => {:multipart => true} do |f|
    f.inputs do
      f.input :title
      f.input :author
      f.input :category_id, :as => :select, :collection => Category.all.collect {|category| [category.name, category.id] }
      f.input :content
      f.input :full_content, as: :wysihtml5
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
