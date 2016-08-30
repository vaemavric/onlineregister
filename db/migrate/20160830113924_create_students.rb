class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|

      t.string :name
	  t.string :year
	  t.string :age
	  t.string :contact
	  t.string :cuid
	  t.string :created
	  t.string :updated
	  t.string :school
      t.timestamps
    end
  end
end
