class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text

      t.timestamps # creates two timestamp fields to allow Rails to track article creation and update times
    end
  end
end
