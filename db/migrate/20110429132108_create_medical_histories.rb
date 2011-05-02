class CreateMedicalHistories < ActiveRecord::Migration
  def self.up
    create_table :medical_histories do |t|
      t.references :mother_history
      t.string :detail

      t.timestamps
    end
  end

  def self.down
    drop_table :medical_histories
  end
end
