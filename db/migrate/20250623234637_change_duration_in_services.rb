class ChangeDurationInServices < ActiveRecord::Migration[8.0]
  def change
    change_column :services, :duration, :integer
  end
end
