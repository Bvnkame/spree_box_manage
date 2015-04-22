collection @boxes
attributes :id, :name, :story

child(:covers => :image) {
  extends "bm/imagecovers/show"
}

child(:expert => :expert) { 
  extends "bm/expert/show"
}

child(:products => :products) { attributes :id}