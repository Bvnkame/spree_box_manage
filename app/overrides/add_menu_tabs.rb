Deface::Override.new(:virtual_path => 'spree/admin/shared/_tabs',
  :name => 'add_menu_tabs',
  :insert_after => "erb[silent]:contains('Spree::Order')",
  :text => "
    <% if can? :admin, Spree::Order %>
      <%= tab *Spree::BackendConfiguration::SHIPPING_TABS, icon: 'shopping-cart' %>
    <% end %>
  ")