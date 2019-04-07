require 'rest-client'
require 'json'

require 'mercadopago.rb'

module Payment
  def self.pay currency, currency_destination, quantity
    begin
      mp = MercadoPago.new(ENV['MERCADO_PAGO_CLIENT_ID'] , ENV['MERCADO_PAGO_CLIENT_SECRET'])

      res = RestClient.get mp.create_preference({"items" => ["title"=>"oi", "quantity"=>1, "unit_price"=>10, "currency_id"=>"BRL"]})['response']['sandbox_init_point'].to_s
      value = JSON.parse(res.body)['collector_id']
      return value
    rescue
        return 'Problema durante a conversão'
    end
  end
end
