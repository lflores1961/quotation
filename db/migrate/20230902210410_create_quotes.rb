class CreateQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :quotes do |t|
      t.string :title
      t.string :customer
      t.jsonb :service_group, null: false, default: '{}'

      t.timestamps
    end
    add_index :quotes, :service_group, using: :gin
  end
end
