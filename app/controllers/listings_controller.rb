class ListingsController < ApplicationController
    before_action :set_listing, only: [:show, :edit, :update, :destroy]
    
    def index
        @listings = Listing.all
    end

    def show

    end

    def new
      @listing = Listing.new
    end

    def create
      if Listing.create(listing_params)
        p "success"
        redirect_to listings_path
      else
        render "new"
      end
        #finish logic for creating a record
    end

    def edit
      
    end

    def update
      if @listing.update(listing_params)
        p "success"
        redirect_to listings_path
      else
        p "failure"
        render "edit"
      end
        #finish logic for updating the record
    end

    def destroy

        #finish logic for deleting the record
    end

    private

    def set_listing
      @listing = Listing.find(params[:id])
    end

    def listing_params
      params.require(:listing).permit(:title, :description, :breed_id, :sex, :price, :deposit, :city, :state, :date_of_birth, :diet, :picture)
    end
end