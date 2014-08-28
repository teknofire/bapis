module V1
  module Resources
    class Grants
      include Praxis::ResourceDefinition
      media_type V1::MediaTypes::Grant
      version "1.0"
      
      action :show do
        routing do 
          get '/:code'
        end
        
        params do
          
        end
      end
      
    end
  end
end