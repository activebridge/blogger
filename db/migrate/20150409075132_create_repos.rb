class CreateRepos < ActiveRecord::Migration
  def change
    create_table :repos do |t|
      t.integer :user_id, null: false
      t.string :name, null: false
      t.string :html_url, null: false
      t.boolean :profile_visibility, default: true
      t.string :full_name

      t.timestamps null: false
    end
    add_index :repos, [:user_id, :name], unique: true
  end
end
