class Garagiste < ApplicationRecord
  has_many :quotations, dependent: :destroy
  has_many :searches, dependent: :destroy
end
