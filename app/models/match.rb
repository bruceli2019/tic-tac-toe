# == Schema Information
#
# Table name: matches
#
#  id            :integer          not null, primary key
#  my_id         :integer
#  other_user_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Match < ApplicationRecord
end
