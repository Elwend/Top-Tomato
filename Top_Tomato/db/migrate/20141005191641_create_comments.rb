class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.body :string
      t.references :movie

      t.timestamps
    end
  end
end
