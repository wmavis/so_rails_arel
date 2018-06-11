class Party < ApplicationRecord
  has_one :name,
    class_name: 'PartyName'

  has_many :expired_names,
    class_name: 'ExpiredName'
end
