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

class Order < ActiveRecord::Base

  def get_order_status

  end

  def create_new_imei_check(imei=nil, service=nil)

  end



end
