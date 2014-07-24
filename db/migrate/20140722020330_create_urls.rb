class CreateUrls < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.string "domain"
      t.string "owner"
      t.date "purchased_date"
      t.date "expiration_date"
      t.string "project_name"
      t.string "redirect"
      t.text "notes"
      t.timestamps
    end
  end
end
