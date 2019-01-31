# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  match_id   :integer
#  chat       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Message < ApplicationRecord
end
