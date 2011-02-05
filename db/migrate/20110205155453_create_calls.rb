class CreateCalls < ActiveRecord::Migration
  def self.up
    create_table :calls do |t|
      t.string :ali_query_timestamp
      t.string :seizure_datetime
      t.integer :queue_secs
      t.integer :ring_secs
      t.integer :answer_secs
      t.integer :duration_secs
      t.integer :hold_secs
      t.integer :release_secs
      t.integer :talk_secs
      t.string :release_date_time
      t.string :line_number
      t.integer :ali_esn
      t.string :tower_address
      t.string :city
      t.string :directional
      t.string :ali_latitude
      t.string :ali_longitude
      t.boolean :isabandoned
      t.string :transfer_number
      t.boolean :transferred
      t.string :nena_id

      t.timestamps
    end
  end

  def self.down
    drop_table :calls
  end
end
