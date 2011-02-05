class Call < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 100
  
  def category
    if self.duration_secs > 120
      "bad"
    else
      "good"
    end
  end
  
end
