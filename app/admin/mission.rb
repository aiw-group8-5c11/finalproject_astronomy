ActiveAdmin.register Mission do
  menu :parent => "Nhiệm vụ thám hiểm"
  permit_params :name, :status_id , :description, :element_id, :launch_date,:active_date,:finished_date

  index do
    selectable_column
    id_column
    column :name
    column :status_id
    column :element_id
    column :launch_date
    column :active_date
    column :finished_date
    actions
  end

  filter :name
  filter :status
  filter :element_id
  filter :launch_date
  filter :active_date
  filter :finish_date

  form :html => { :multipart=>true } do |f|
    f.inputs "Mission Detail" do
      f.semantic_errors # show errors on :base by default

      f.input :name
      f.input :element_id, :as => :select, :collection => Element.all.collect {|element| [element.name, element.id] }
      f.input :status_id, :as => :select, :collection => Status.all.collect {|status| [status.name, status.id] }
      f.input :description
      br
      f.label "Launch_date", :class=>"label_mission"
      f.datetime_local_field :launch_date
      br
      br
      f.label "Active_date", :class=>"label_mission"
      f.datetime_local_field :active_date
      br
      br
      f.label "Finish_date", :class=>"label_mission"
      f.datetime_local_field :finished_date
      # f.input:launch_date, :as => datetime_local
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
