Deface::Override.new(:virtual_path => 'spree/layouts/admin',
  :name => 'add_tabs',
  :insert_after => "erb[loud]:contains('spree/admin/shared/header')",
  :text => "
    <ul class='nav nav-sidebar'>
    <li>Bvnkame</li>
    </ul>
  ")