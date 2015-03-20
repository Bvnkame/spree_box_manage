collection @boxdetails
attributes :id
child(:boxes) { attributes :id, :name}
child(:products) { attributes :id, :name}