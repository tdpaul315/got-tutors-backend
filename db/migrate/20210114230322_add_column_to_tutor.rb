class AddColumnToTutor < ActiveRecord::Migration[6.0]
  def change
    add_column :tutors, :availability, :string
  end
end
