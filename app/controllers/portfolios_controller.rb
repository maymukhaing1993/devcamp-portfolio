class PortfoliosController < ApplicationController

	def index
		@portfolio_items = Portfolio.all
		#@portfolio_items = Portfolio.where(subtitle: 'Ruby on Rails')
	end

	def angular
		@angular_portfolio_items = Portfolio.angular
	end

	def new
		@portfolio_item = Portfolio.new
		3.times { @portfolio_item.technologies.build }
	end
	 # POST /blogs or /blogs.json

	# GET /blogs/1 or /blogs/1.json
	def show
		@portfolio_item = Portfolio.find(params[:id])
	end

	   # GET /blogs/1/edit
	  def edit
	  	@portfolio_item = Portfolio.find(params[:id])
	  end
    
    def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path(@portfolio_item), notice: "Your portfolio item is now live." }
        format.json { render :show, status: :created, location: @portfolio_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end

  

     # PATCH/PUT /blogs/1 or /blogs/1.json
	  def update
	    @portfolio_item = Portfolio.find(params[:id])
	    respond_to do |format|
	      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
	        format.html { redirect_to portfolios_path, notice: "The record successfully updated." }
	        format.json { render :show, status: :ok, location: @blog }
	      else
	        format.html { render :edit, status: :unprocessable_entity }
	      end
	    end
    end
  end
      private 
		    def portfolio_params
		    	params.require(:portfolio).permit(:title, 
		    																		:subtitle, 
		    																		:body, 
		    																		technologies_attributes: [:name])
		    end
end
