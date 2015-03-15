Deface::Override.new(:virtual_path => 'spree/layouts/admin',
  :name => 'add_tabs',
  :insert_before => "erb[loud]:contains('spree/admin/shared/header')",
  :text => "
    <ul class='nav nav-sidebar'>
    <li>Bvnkame</li>
    </ul>
  ")