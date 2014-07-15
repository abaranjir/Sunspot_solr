class Addcolumnnameandcontent < ActiveRecord::Migration
  def self.up
  	add_column :articles, :name, :string
  	add_column :articles, :content, :text
  	add_column :comments, :article_id, :integer
  	add_column :comments, :content, :text
  end

  def self.down
  	remove_column :articles, :name
  	remove_column :articles, :content
  	remove_column :comments, :article_id
  	remove_column :comments, :content
  end
end
