class AddBmrValueToBmrs < ActiveRecord::Migration[7.0]
  def change
    add_column :bmrs, :bmr_value, :decimal
    
  end
end
