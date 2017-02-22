class Search < ApplicationRecord
 validates :intervention, presence: true
 validates :ville, presence: true
 has_many :quotations, dependent: :destroy
 belongs_to :garagiste
end
