class CreatePageTexts < ActiveRecord::Migration
  def self.up
    create_table :page_texts do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :page_texts
  end
end
