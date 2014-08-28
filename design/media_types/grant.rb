module V1
  module MediaTypes
    class Grant < Praxis::MediaType
      identifier 'application/json'
      
      attributes do
        attribute :href, String, regexp: %r{/grants/G\d{5}}
        attribute :code, String,
          required: true,
          description: "Unique grant code"
        attribute :name, String,
          required: true,
          description: "Name of the grant"
        attribute :pi, Employee
        attribute :cois, ::Praxis::Collection.of(Employee)
        
        links do
          link :pi
          link :cois
        end
      end
      
      view :default do
        attribute :href
        attribute :code
        attribute :name
        attribute :links
      end
      
      view :link do
        attribute :href
      end
    end
  end
end