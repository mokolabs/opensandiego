namespace :import do
  
  desc 'Import 911 call data'
  task :calls => :environment do 
    
    puts "Importing 911 call data"
    Call.destroy_all
    FasterCSV.foreach("db/911-response-data.csv", {:headers => true}) do |row|
      Call.create(
        :ali_query_timestamp => row[0],
        :seizure_datetime    => row[1],
        :queue_secs          => row[2],
        :ring_secs           => row[3],
        :answer_secs         => row[4],
        :duration_secs       => row[5],
        :hold_secs           => row[6],
        :release_secs        => row[7],
        :talk_secs           => row[8],
        :release_date_time   => row[9],
        :line_number         => row[10],
        :ali_esn             => row[11],
        :tower_address       => row[12],
        :city                => row[13],
        :directional         => row[14],
        :ali_latitude        => row[15],
        :ali_longitude       => row[16],
        :isabandoned         => row[17],
        :transfer_number     => row[18],
        :transferred         => row[19],
        :nena_id             => row[20]
      )    
    end
    
  end
  
end