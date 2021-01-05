class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    # NAME_REGEX = /\A[ぁ-んァ-ン一-龥]/.freeze
    # PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze

    validates :nickname, presence: true, length: { maximum: 6 }
end
