class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :name
      t.boolean :public, default: false

      t.timestamps
    end
  end
end
