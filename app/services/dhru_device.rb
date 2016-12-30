class DhruDevice

  # getimeiorder
  def order_status(order_id)
    body = payload
    body[:action] = 'getimeiorder'
    body[:parameters] = "<PARAMETERS><ID>#{order_id}</ID></PARAMETERS>"
    execute_request(body)
  end

  def place_imei_order(imei, service_id)
    body = payload
    body[:action] = 'placeimeiorder'
    body[:parameters] = "<PARAMETERS><ID>#{service_id}</ID><IMEI>#{imei}</IMEI></PARAMETERS>"
    execute_request(body)
  end

  def account_info
    body = payload
    body[:action] = 'accountinfo'
    execute_request(body)
  end

  def service_list
    body = payload
    body[:action] = 'imeiservicelist'
    execute_request(body)
  end


private

  def payload
    hash = { username: ENV['UNLOCKING_USER'],
             apiaccesskey: ENV['UNLOCKING_API'],
             requestformat: 'JSON',
             action: nil,
             parameters: nil
            }
  end

  def execute_request(body)
    url = 'http://unlockking.us/api/index.php'
    HTTParty.post(url,
                {
                  :body => body,
                  :headers => { 'Content-Type' => 'application/x-www-form-urlencoded' }
                 })
  end
end
