class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name, unique: true, presence: true


      t.timestamps
    end
  end
end
