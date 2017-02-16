class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses
  has_many :cocktails, through: :doses
    # before_remove: :validate_removable!

  # private

# def validate_removable_cocktails!(cocktail)
#   if cocktail
#   raise ActiveRecord::RecordNotSaved unless editable?(line)
# end

end
