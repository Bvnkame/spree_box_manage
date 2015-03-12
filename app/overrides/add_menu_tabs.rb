Deface::Override.new(:virtual_path => 'spree/admin/shared/_tabs',
  :name => 'add_menu_tabs',
  :insert_after => "erb[silent]:contains('Spree::Order')",
  :text => "
  ")