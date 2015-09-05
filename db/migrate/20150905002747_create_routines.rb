class CreateRoutines < ActiveRecord::Migration
  def change
    create_table :routines do |t|
      t.string 'title', null: false
      t.string 'focus', default: 'none', null: false
      t.text 'details'
      t.timestamps null: false
    end
  end
end
