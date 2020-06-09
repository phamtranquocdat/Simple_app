class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.string :name
      t.references :users_id
      t.references :catelories_id

      t.timestamps
    end
  end
end
