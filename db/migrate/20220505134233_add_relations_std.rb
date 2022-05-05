class AddRelationsStd < ActiveRecord::Migration[5.2]
  def change
    add_reference :strolls, :dogsitter, foreign_key: true
  end
end
