class BooksController < ApplicationController

  def index
    @books = Book.all
    @order_item = current_order.order_items.new
    if params[:search]
      @books = Book.search(params[:search]).order("created_at DESC")

    else
      @books = Book.order("created_at DESC")
    end
  end

  def search
  if params[:query]
    @books = Book.search(params[:query])
  else
    @books = []
  end
  end
  
    def show
	@book = Book.find(params[:id])
  end

 
  def new
    @book = Book.new
  end

  
  def edit
   @book = Book.find(params[:id])
  end
  
  
    def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
	@book = Book.find(params[:id])
    @book.destroy
    
	respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :manufacturer, :category, :image, :price, :active)
    end
  
  
end
