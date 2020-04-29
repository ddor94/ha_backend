class Artist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :token_authenticatable

  has_and_belongs_to_many :styles

  validate :checkbox_validation

  def checkbox_validation
    if !tattoo && !piercing
      errors.add(:base, 'Ao menos um campo deve ser selecionado.')
    end
  end
end
