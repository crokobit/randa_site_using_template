class CreateVideoArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :video_articles do |t|
      t.string :title
      t.text :content
    end
  end
end
