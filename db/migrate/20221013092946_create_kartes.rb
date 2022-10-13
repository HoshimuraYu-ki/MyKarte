class CreateKartes < ActiveRecord::Migration[6.0]
  def change
    create_table :kartes do |t|

      t.timestamps
    end
  end
end
