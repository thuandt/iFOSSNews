class AddArticlePhotoThumb < ActiveRecord::Migration
  def up
     add_column :articles, :photothumb_file_name,    :string
     add_column :articles, :photothumb_content_type, :string
     add_column :articles, :photothumb_file_size,    :integer
     add_column :articles, :photothumb_updated_at,   :datetime
  end

  def self.down
    remove_column :articles, :photothumb_file_name
    remove_column :articles, :photothumb_content_type
    remove_column :articles, :photothumb_file_size
    remove_column :articles, :photothumb_updated_at
  end
end
