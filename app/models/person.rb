class Person < ApplicationRecord
  enum relationship: [:family, :friend, :work]
end
