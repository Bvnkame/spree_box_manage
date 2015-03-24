collection @boxes
attributes :id, :name, :time_cook, :story, :image_url, :recipe_link
child(:experts) { attributes :id, :title, :name, :image_url, :comment }
child(:products => :products) { attributes :id}