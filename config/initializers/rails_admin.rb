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
=begin
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


  config.model Address do
    visible false
    configure :user do
      hide
    end
  end

  config.model Phone do
    visible false
  end

  config.model Service do
    [:title, :price].each do |sym|
      configure sym.to_sym do
        required true
      end
    end

  end
  config.model Contract do
    [:user, :service, :date, :start_time,:end_time, :classifyings].each do |sym|
      configure sym.to_sym do
        required true
      end
    end
    configure :categories do
      hide
    end
    configure :classifyings do
      hide
    end
  end
  config.model  Classifying do
    visible false

  end
  config.model Category do
    visible false
    configure :services do
      hide
    end
    configure :classifyings do
      hide
    end
  end
=end
end
