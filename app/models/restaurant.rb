class Restaurant < ApplicationRecord
  # if a restaurant gets deleted also the reviews get del
  has_many :reviews, dependent: :destroy
  # validations name address + cat
  validates :name, :address, :category, presence: true
  # cat darf nur auf einer spez liste kommen
  validates :category, inclusion: { in: [ "chinese", "italian", "japanese", "french", "belgian" ] }
end
