class CreateEmailForms < ActiveRecord::Migration
  def change
    create_table :email_forms do |t|
      t.string :email

      t.timestamps
    end
  end
end
