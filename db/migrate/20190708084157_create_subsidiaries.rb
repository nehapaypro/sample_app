class CreateSubsidiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :subsidiaries do |t|
      t.string :firm
      t.string :country
      t.string :adress
      t.string :CEO

      t.timestamps
    end
  end
end
