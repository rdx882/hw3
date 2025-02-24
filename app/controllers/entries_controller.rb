class EntriesController < ApplicationController
  def show
    @entry = Entry.find_by ({"id" => params["id"]})
    @place = Place.find_by ({"id" => @entry["place_id"])
    #render entries/show view with details about Entry
  end

  def new
    #renter Entries/new view with Entry form - purely HTML/front end
  end

  def create    
    #start with a new Entry
    @entry = Entry.new

    #assign user entered Entry form data to Entry table's columns
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occured_on"] = params["occured_on"]
    
    #assign relationship between Entry and Place
    @entry["place_id"] = params["place_id"]

    #save entry row
    @entry.save

    #redirect user
    redirect_to "/places/#{@entry["company_id"]}"
  end


end
