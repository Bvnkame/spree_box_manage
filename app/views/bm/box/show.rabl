collection @box
attributes :id, :name, :story

child(:covers => :image) {
  extends "bm/imagecovers/show"
}

child(:experts => :expert) { 
  extends "bm/expert/show"
}

child(:products => :products) { attributes :id}