class Tweet < ActiveRecord::Base
  attr_accessible :content, :tweet_id, :twitter_name


  def stringify 
  	return self.twitter_name + " says: " + self.content
  end

end
