class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_confirmation
      t.string :password_digest
      t.string :bio
      t.string :profile_picture
      t.string :thumbnail
      t.boolean :public

      t.timestamps
    end
  end
end
