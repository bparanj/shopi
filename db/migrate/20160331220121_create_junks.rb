class CreateJunks < ActiveRecord::Migration[5.0]
  def change
    create_table :junks do |t|

      t.timestamps
    end
  end
end
