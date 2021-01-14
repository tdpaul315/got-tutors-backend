class CreateTutors < ActiveRecord::Migration[6.0]
  def change
    create_table :tutors do |t|
      t.string :name
      t.string :course
      t.integer :yrs_of_exp

      t.timestamps
    end
  end
end
