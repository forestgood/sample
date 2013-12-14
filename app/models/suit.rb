class Suit < ActiveRecord::Base
  attr_accessible :age, :location, :name, :avatar, :story, :website, :email
  before_save { |suit| suit.email = email.downcase }
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" },
  					:url => "/assets/images/:id/:style/:basename.:extension",
  					:path => ":rails_root/public/assets/images/:id/:style/:basename.:extension",
  					:default_url => "emptylogo.png"

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  validates :age, presence: true, length: {maximum: 50}
  validates :location, presence: true, length: {maximum: 100}
  validates :name, presence: true, length: {maximum: 50}
  validates :story, presence: true, length: {maximum: 3000}
  validates_attachment :avatar,
  :size => { :in => 0..100.kilobytes }
end
