class ChangeLocationToAddressInCleaners < ActiveRecord::Migration[5.2]
  def change
    rename_column :cleaners, :location, :address
  end
end
