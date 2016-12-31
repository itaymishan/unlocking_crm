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

  enum status: [ :pending, :processing, :rejected, :success ]

  def get_order_status

  end
end
