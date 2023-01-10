class CreateVolunteerHelpRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :volunteer_help_requests do |t|
      t.string :title
      t.text :description
      t.datetime :deadline
      t.string :city
      t.integer :status
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
