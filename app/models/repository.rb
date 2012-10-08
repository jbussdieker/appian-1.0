class Repository < ActiveRecord::Base
  attr_accessible :name

  def hooks
    Dir["/home/jbussdieker/Desktop/testrepo/hooks/*"]
  end

end
