collection @expert
attributes :id, :name, :title, :comment

child(:avatars => :image) {
  extends "bm/imageavatars/show"
}