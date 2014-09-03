##when working with backbone in rails, makes the json readable to the backbone specifications. Also need to restart server after including it.
ActiveRecord::Base.include_root_in_json = false