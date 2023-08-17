class AddMobileNumberToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :mob_number, :integer
  end
end
