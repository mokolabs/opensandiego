class Call < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 100
  
end
