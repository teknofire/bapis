module V1
  module Resources
    class FundOrgs
      include Praxis::ResourceDefinition
      media_type V1::MediaTypes::FundOrg
      version "1.0"
      
      action :show do
        routing do 
          get '/:fund_org'
        end
        
        params do
          
        end
      end
      
    end
  end
end