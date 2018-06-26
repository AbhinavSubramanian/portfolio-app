class CreateNestedforms < ActiveRecord::Migration[5.2]
  def change
    create_table :nestedforms do |t|
      t.string :title

      t.timestamps
    end
  end
end
