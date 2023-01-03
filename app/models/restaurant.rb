class Restaurant < ApplicationRecord
  has many :reviews, dependent :destroy
end
