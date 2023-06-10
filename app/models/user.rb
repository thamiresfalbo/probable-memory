class User < ApplicationRecord
  ROLES = %i[admin moderator member banned]
  authenticates_with_sorcery!
  has_many :works

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true, email_format: { message: 'has invalid format.' }, presence: true
end
