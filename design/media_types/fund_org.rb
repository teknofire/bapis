module V1
  module MediaTypes
    class FundOrg < Praxis::MediaType
      identifier 'application/json'
      
      attributes do
        attribute :href, String, example: '/fund_orgs/123456-7890'
        attribute :fund, String, regexp: %r{\d{6}}, example: '123456'
        attribute :org, String, regexp: %r{\d{4}}, example: '7890'
        attribute :grant, Grant
        
        links do 
          link :grant
        end
      end
      
      view :default do
        attribute :href
        attribute :fund
        attribute :org
        attribute :links
      end
    end
  end
end
