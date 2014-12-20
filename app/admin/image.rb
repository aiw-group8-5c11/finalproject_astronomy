ActiveAdmin.register Image do
  menu :label => "Hình Ảnh"
  permit_params :image_path, :attachment, :mission_id,:news_id,:detail_id
  index do
    selectable_column
    id_column
    column :image_path
    column :attachment
    column :mission_id
    column :news_id
    column :detail_id
    actions
  end
  form :html => { :multipart=>true } do |f|
    f.inputs "Chi tiết hình ảnh" do
      f.semantic_errors # show errors on :base by default

      f.input :image_path
   # f.select("image", "mission",IMAGE::MISSIONS, { include_blank:true})
    # f.select_tag(:mission_id)
    f.input :mission_id, :as => :select, :collection => Mission.all.collect {|mission| [mission.name, mission.id] }
    f.input :detail_id, :as => :select, :collection => Detail.all.collect {|detail| [detail.name, detail.id] }
    f.input :news_id, :as => :select, :collection => News.all.collect {|news| [news.title, news.id] }
    f.file_field :attachment, :label=>"Attachment"
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
