class CreatePersonaVs < ActiveRecord::Migration[7.0]
  def change
    create_table :persona_vs do |t|
      t.string :user
      t.string :pass

      t.timestamps
    end
  end
end
