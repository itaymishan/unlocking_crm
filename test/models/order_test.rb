# == Schema Information
#
# Table name: orders
#
#  id             :integer          not null, primary key
#  IMEI           :string
#  customer_email :string
#  customer_name  :string
#  status         :integer
#  external_id    :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
