module V1
  module MediaTypes
    class Employee < Praxis::MediaType
      identifier 'application/json'
      
      attributes do
        attribute :href, String, regexp: %r{/employees/\d{6,7}}
        attribute :ua_id, Integer,
          required: true,
          min: 3000000,
          description: "UA Employee #"
        attribute :first_name, String,
          required: true,
          description: "Employee first name",
          example: 'John'
        attribute :last_name, String,
          required: true,
          description: "Employee last name",
          example: 'Smith'
        attribute :email, String,
          required: true,
          description: "Persons UA Email address",
          example: "person@alaska.edu"
        attribute :classification, String,
          description: "Position classification",
          values: %w{ Faculty Staff Adjunct Exempt Non-Exempt Temp }
        attribute :hourly_rate, Float,
          required: true,
          description: "Employee hourly pay rate, not including benefits",
          example: "38.27"
        attribute :hourly_benefits_rate, Float,
          required: true,
          description: "Employee hourly pay rate with benefits",
          example: "43.27"        
      end
      
      view :default do
        attribute :href
        attribute :ua_id
        attribute :first_name
        attribute :last_name
        attribute :email
        attribute :classification
        attribute :hourly_rate
        attribute :hourly_benefits_rate
      end
      
      view :link do
        attribute :href
      end
    end
  end
end