class RsaKey < ActiveRecord::Base
  attr_accessible :key_data, :user_id

  belongs_to :user
end
