ActiveAdmin.register User do

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
	index do
	  column :email
    column :role
    column :name

	  actions
	end

	form do |f|
  inputs 'Details' do
  input :email
  f.input :role, as: :select, collection: %i(general operator )
  li "Created at #{f.object.created_at}" unless f.object.new_record?

  end
  actions
  end

  permit_params :role

end




