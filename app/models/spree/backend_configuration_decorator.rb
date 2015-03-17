module Spree

	 BackendConfiguration.const_set(:SHIPPING_TABS, [:shipping, :payments, :creditcard_payments,:shipments, :credit_cards, :return_authorizations,:customer_returns, :adjustments, :customer_details])
	 
	 BackendConfiguration.const_set(:TESTING_TABS, [:shipping, :payments, :creditcard_payments,:shipments, :credit_cards, :return_authorizations,:customer_returns, :adjustments, :customer_details])
	 BackendConfiguration.const_set(:TESTING_TABS1, [:cooking, :eating])
	 BackendConfiguration.class_eval do 
	 		define_method 'abc' do
        puts 999999
      end
	 end

end