class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
    	t.string :Name, null:true
    	t.string :Email, null:true
    	t.string :Message, null:true
      t.timestamps
    end
  end
end
