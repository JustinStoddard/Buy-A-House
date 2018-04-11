class Property < ApplicationRecord
  belongs_to :agent
  has_one :address

  # Property.available
  def self.available
    select('properties.id, price, beds, baths, sq_ft,
          ad.city, ad.state, ad.street, a.first_name')         
    .joins('INNER JOIN agents a 
              ON a.id = properties.agent_id
            INNER JOIN addresses ad 
              ON ad.property_id = properties.id')
    .where('properties.sold <> TRUE')
    .order('a.id')
  end
end
