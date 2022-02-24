class CreateProjectts < ActiveRecord::Migration[7.0]
  def change
    create_table :projectts do |t|
      t.string :title
      t.string :description
      t.references :manager, foreign_key: {to_table: :users}
      t.references :developer, foreign_key: {to_table: :users}
      t.references :qa, foreign_key: {to_table: :users}



      t.timestamps
    end
  end
end
