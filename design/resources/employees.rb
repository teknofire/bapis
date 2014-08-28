module V1
  module ApiResources
    class Employees
      include Praxis::ResourceDefinition
      media_type V1::MediaTypes::Employee
      version "1.0"

      action :show do
        routing do 
          get '/:ua_id'
        end
        
        params do
          attribute :id, Integer,
            description: "Users UA ID number"
        end
      end
    end
  end
end