class RenameExperiencesToAcquisition < ActiveRecord::Migration
  def change
    rename_column :acquisitions, :experiences, :experience
  end
end
