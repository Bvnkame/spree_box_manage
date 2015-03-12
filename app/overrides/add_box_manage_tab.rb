Deface::Override.new(:virtual_path => 'spree/admin/shared/_header',
  :name => 'add_sale_price_to_product_edit',
  :insert_after => "header#header",
  :text => "
    <ul class='nav nav-sidebar'>
    <li>YESer</li>
    </ul>
  ")