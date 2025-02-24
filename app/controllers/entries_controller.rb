class EntriesController < ApplicationController
  def show
    @place = Place.find_by ({"id" => params["id"]})
    @entry = Entry.find_by ({"id" => @place["entry_id"]
    #render entries/show view with details about Entry
  end

  def new
    #renter Entries/new view with Entry form
  end

  def create    
    #start with a new Entry
    @entry = Entry.new


end
