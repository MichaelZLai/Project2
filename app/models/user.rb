class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :scores, dependent: :destroy

  has_one :athlete, dependent: :destroy

  # NHO: reminder to remove unused / commented out code
  # accepts_nested_attributes_for :athlete

end
