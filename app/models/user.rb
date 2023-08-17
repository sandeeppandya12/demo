class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    validates :mob_number, format: { with: /\A\d{10}\z/ }, allow_blank: false

    enum role: {user: 0, admin: 1}

   validate :one_admin

   private
   def one_admin
      if role=='admin' && User.exists?(role: 'admin')
        errors.add(:role, 'an admin user allready exists.')
      end
    end
  end
