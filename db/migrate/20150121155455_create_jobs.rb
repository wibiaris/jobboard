class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :descrtiption
      t.string :company
      t.string :url

      t.timestamps
    end
  end
end
