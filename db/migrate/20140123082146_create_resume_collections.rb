class CreateResumeCollections < ActiveRecord::Migration
  def change
    create_table :resume_collections do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps
    end
  end
end
