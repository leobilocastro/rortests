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
    list do
      field :full_name
      field :email
      field :role
      field :phones

    end

    create do
    field :full_name do
        required true
      end
     field :gender
     field :date_of_birth
     field :cpf
     field :phones, :simple_has_many do
      orderable true
      required true
     end
     field :email do
      required  true
    end
     field :password do
      required true
    end
     field :password_confirmation do
      required true
    end
     field :role do
      required true
    end
     field :address 
    end

    edit do
      field :full_name do
        required true
      end
      field :gender
      field :date_of_birth
      field :cpf
      field :phones, :simple_has_many do
       required true
      end
      field :email do
        required true
      end
      field :role do
        required true
      end
      field :address
      configure :address do
        nested_form false
      end 
     end
  end
end