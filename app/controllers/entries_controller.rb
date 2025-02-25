class EntriesController < ApplicationController
  
  def new
    #renter Entries/new view with Entry form - purely HTML/front end
  end

  def create    
    #start with a new Entry
    @entry = Entry.new

    #assign user entered Entry form data to Entry table's columns
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occurred_on"]
    
    #assign relationship between Entry and Place
    @entry["place_id"] = params["place_id"]

    #save entry row
    @entry.save

    #redirect user
    redirect_to "/places/#{@entry["place_id"]}"
  end


end
