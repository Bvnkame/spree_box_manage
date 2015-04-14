collection @experts
attributes :id, :name, :title, :comment

child(:avatar => :image) {
  extends "bm/imageavatars/show"
}