class RegistrationsController < Devise::RegistrationsController

    # This method allows profile page edits without requiring current password input
    # See routes.rb
    protected
    def update_resource(resource, params)
        resource.update_without_password(params)
    end
end
