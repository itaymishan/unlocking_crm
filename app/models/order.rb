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

  #after_create :make_order

  def make_order
    self.raw_result = DhruDevice.new.place_imei_order(self.imei, 509)
    save
  end

  def fetch_order_status
    raw_status = DhruDevice.new.order_status(self.external_id)
    self.raw_result = raw_status
    self.save
  end
end
