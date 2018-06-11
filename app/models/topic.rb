class Topic < ApplicationRecord
  has_many :post, dependent: :destroy
end
