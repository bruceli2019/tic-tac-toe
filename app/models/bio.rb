# == Schema Information
#
# Table name: bios
#
#  id          :integer          not null, primary key
#  description :text
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Bio < ApplicationRecord
end
