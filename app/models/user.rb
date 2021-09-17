class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :inputs, dependent: :destroy
  has_many :ourmembers, dependent: :destroy
  has_many :ourexectives, dependent: :destroy
  

end
