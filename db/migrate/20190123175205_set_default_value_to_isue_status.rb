class SetDefaultValueToIsueStatus < ActiveRecord::Migration[5.2]
  def change
    change_column :issues, :status, :string, default: 'REPORTED'
  end
end
