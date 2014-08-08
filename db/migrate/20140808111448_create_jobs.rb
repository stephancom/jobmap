class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.float :latitude
      t.float :longitude
      t.text :notes
      t.string :full_street_address

      t.timestamps
    end
  end
end
