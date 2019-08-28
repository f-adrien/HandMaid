class AddPhotoToCleaners < ActiveRecord::Migration[5.2]
  def change
    add_column :cleaners, :photo, :string
  end
end
