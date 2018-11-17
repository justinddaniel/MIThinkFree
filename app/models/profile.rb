class Profile < ApplicationRecord
  belongs_to :user
  validate :has_name?

  def has_name?
    if self.alias.empty? && self.real_name.empty?
      errors.add(:alias, "Must have either a real_name and/or alias")
    end
  end
end
