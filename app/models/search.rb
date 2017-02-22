class Search < ApplicationRecord
  has_many :quotations, dependent: :destroy
  belongs_to :garagiste
end
