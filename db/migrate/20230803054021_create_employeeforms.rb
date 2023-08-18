class CreateEmployeeforms < ActiveRecord::Migration[7.0]
  def change
    create_table :employeeforms do |t|
      t.string :first_name
      t.string :last_name
      t.text :address
      t.integer :phone_number
      t.string :marital_status
      t.string :email
      t.string :college
      t.string :degree
      t.string :stream
      t.string :cgpa
      t.date :dob
      t.boolean :experienced

      t.timestamps
    end
  end
end
