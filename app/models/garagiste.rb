class Garagiste < ApplicationRecord
  has_many :searches, dependent: :destroy
end
