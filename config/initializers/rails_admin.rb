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
    new do
      except ['Payment']
    end
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
      field :phones do
        pretty_value do 
          bindings[:object].phones.all.map {|v| v.number}.join(', ')
        end
      end
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
     
    
    list do
        field :title
        field :description
        field :price
        field :user do
          pretty_value do
            path = bindings[:view].show_path(model_name: 'User', id: bindings[:object].user.id)
             bindings[:view].content_tag(:a, bindings[:object].user.full_name, href: path)
          end
        end
    end

    create do
      field :title
      field :description  
      field :price
      field :user
    end

    update do
      field :title
      field :description  
      field :price
      field :user
    end

  end
  config.model Contract do
      [:user, :service,:observations, :start_time].each do |sym|
        configure sym.to_sym do
          required true
        end
      end


    list do
      field :id
      field :start_time
      field :completed
      field :observations
      field :user do
        pretty_value do
          path = bindings[:view].show_path(model_name: 'User', id: bindings[:object].user.id)
          bindings[:view].content_tag(:a, bindings[:object].user.full_name, href: path)
        end
      end
      field :service do
        pretty_value do
          path = bindings[:view].show_path(model_name: 'Service', id: bindings[:object].service.id)
          bindings[:view].content_tag(:a, bindings[:object].service.title, href: path)
        end
      end
    end
  end
end
