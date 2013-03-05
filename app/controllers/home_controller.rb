require 'twitter'

class HomeController < ApplicationController

	
	def index
	end

	def fetch
		if params[:tweet_id] && !params[:tweet_id].blank?
			id = params[:tweet_id]
			
			unless new_tweet = Tweet.where("tweet_id = ?", id).first
				tweet = Twitter.status(id)
				new_tweet = Tweet.new(:content => tweet.text, :tweet_id => id, :twitter_name => tweet.user.screen_name)
				new_tweet.save
			end
			
			@output = new_tweet.stringify
		else
			flash[:notice] = "Enter a valid, numerical ID number."
			redirect_to :action => "index"
		end
	end




end