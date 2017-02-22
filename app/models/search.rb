class Search < ApplicationRecord
 validates :intervention, presence: true
 validates :ville, presence: true
end
