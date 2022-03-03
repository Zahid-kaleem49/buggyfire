class Changetypetobugs < ActiveRecord::Migration[7.0]
  def change
    rename_column :bugs, :type, :types
  end
end
