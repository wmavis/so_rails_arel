class PartyName < ApplicationRecord
  belongs_to :party

  def to_s
    "#{self.class.name}: #{name}"
  end
end
