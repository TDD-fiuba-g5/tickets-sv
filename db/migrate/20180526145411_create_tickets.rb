class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
    	t.string :title
    	t.string :description
    	t.string :ticket_type
    	t.string :state
    	t.references :project
      t.timestamps
    end
  end
end
