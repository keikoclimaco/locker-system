class Organization < ActiveRecord::Base
	#SEG2105 Keiko Climaco 5999930
	#Setting up associations
	has_many :registrations
	has_many :lockers
	has_many :active_relationships, class_name: "ORAssociations", foreign_key: "registration_id", dependent: :destroy
	validates :name, presence: true
	validates :postalCode, length: { maximum: 6 }, presence: true
	validates :phone, length: { maximum: 10 }, presence: true
	validates :country, presence: true
	validates :streetAddress, presence: true
	validates :city, presence: true
	validates :email, presence: true
end
