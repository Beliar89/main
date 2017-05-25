class CreateComentarios < ActiveRecord::Migration[5.1]
  def change
    create_table :comentarios do |t|
      t.string :name
      t.integer :year
      t.string :main_actor
      t.integer :star

      t.timestamps
    end
  end
end
