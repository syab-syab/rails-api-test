class CreateCaffeines < ActiveRecord::Migration[7.0]
  def change
    create_table :caffeines do |t|
      t.string :amount

      t.timestamps
    end
  end
end
