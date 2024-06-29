class CreateMisakis < ActiveRecord::Migration[6.1]
  def change
    create_table :misakis do |t|
      t.string :question

      t.timestamps
    end
  end
end
