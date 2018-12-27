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
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

#the items below dictate what fields are in the admin, go to  l8 to view
	permit_params :email, :admin, :username, :name
	form do |f|
		f.semantic_errors
		f.inputs do
			f.input :username
			f.input :name
			f.input :email
			f.input :admin
		end
		f.actions
	end

#the items below dictate what fields can be seen in admin
	index do
			id_column
			column :username
			column :name
			column :email
			column :admin
			actions
		end

end
