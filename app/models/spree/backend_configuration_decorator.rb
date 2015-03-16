module Spree

	 #BackendConfiguration.const_set(:SHIPPING_TABS, [:shipping, :payments, :creditcard_payments,:shipments, :credit_cards, :return_authorizations,:customer_returns, :adjustments, :customer_details])

	 BackendConfiguration.class_eval do 
	 		def abc
        puts 999999
      end
	 end

end