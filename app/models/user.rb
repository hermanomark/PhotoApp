class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable

  # required the user for payment only once
  has_one :payment
  # we're also gonna hit the payment table
  accepts_nested_attributes_for :payment

  has_many :images
end