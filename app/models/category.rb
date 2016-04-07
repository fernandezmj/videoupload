class Category < ActiveRecord::Base
	has_many :videos

	validates :title, :image, presence: true
  validates :title, :uniqueness => {:case_sensitive => false}
  validates_each :title do |record, attr, value|
    record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
  end

	mount_uploader :image, ImageUploader
end