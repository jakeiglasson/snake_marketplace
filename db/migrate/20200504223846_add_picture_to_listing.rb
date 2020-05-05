class AddPictureToListing < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :picture, :text
  end
end
