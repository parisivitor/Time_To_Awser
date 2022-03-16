class CreateUserProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_profiles do |t|
      t.string :address
      t.string :gender
      t.string :birthdate
      t.references :user, foreing_kay: true

      t.timestamps
    end
  end
end
