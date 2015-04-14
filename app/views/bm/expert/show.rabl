collection @expert
attributes :id, :name, :title, :comment

child(:avatar => :image) {
  extends "bm/imageavatars/show"
}