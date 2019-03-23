RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
   config.authenticate_with do
     warden.authenticate! scope: :user
   end
   config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model User do
    create do
     field :full_name
     field :gender
     field :date_of_birth
     field :cpf
     field :phones
     field :email
     field :password
     field :password_confirmation
     field :role

    end
  end




  config.model Service do
    field :user_id, :hidden do
      default_value do
        bindings[:view]._current_user.id
      end
    end

  end



  config.model Address do
    visible false
  end

  config.model Phone do
    visible false
  end

end
