class Search < ApplicationRecord
 validates :intervention, presence: true
 validates :code_postal, presence: true
end
