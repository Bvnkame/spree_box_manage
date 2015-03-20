collection @box
attributes :id, :name, :description, :time_cook, :store, :image_url, :recipe_link
child(:experts) { attributes :id, :title, :name, :image_url, :comment }