class Party < ApplicationRecord
  has_one :name,
    -> { valid },
    class_name: 'PartyName'

  has_many :expired_names,
    -> { invalid },
    class_name: 'PartyName'
end
