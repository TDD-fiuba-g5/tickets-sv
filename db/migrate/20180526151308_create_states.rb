class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.string :title
      t.references :project

      t.timestamps
    end
  end
end
