class ApplicationRecord < ActiveRecord::Base
  valid = lambda do |positive = true|
    if %w[validForBegin validForEnd].all? { |c| base_class.column_names.include?(c) }
      condition = "NOW() BETWEEN #{base_class.table_name}.\"validForBegin\" AND #{base_class.table_name}.\"validForEnd\""
      condition = "NOT (#{condition})" unless positive
      where(condition)
    end
  end

  scope :valid, valid
  scope :invalid, -> { valid(false) }

  self.abstract_class = true
end
