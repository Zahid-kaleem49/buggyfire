class Addprojectttobugs < ActiveRecord::Migration[7.0]
  def change
        add_reference :bugs, :projectt, foreign_key: true

  end
end
