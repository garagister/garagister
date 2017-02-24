class Search < ApplicationRecord
 validates :intervention, presence: true
 validates :code_postal, presence: true
 validates :immatriculation, presence: true, format: {with: /[A-Z]{2}-[0-9]{3}-[A-Z]{2}/}
end
