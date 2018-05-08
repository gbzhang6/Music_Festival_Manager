class TransactionsController < ApplicationController
  before_action :find_transaction, only: [:show, :edit, :update, :destroy]

  def index
    @transactions = Transaction.all
  end

  def show
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.create(transaction_params)

    if @transaction.valid?
      redirect_to @transaction
    else
      flash[:errors] = @transaction.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    @transaction.update(transaction_params)

    if @transaction.valid?
      redirect_to @transaction
    else
      flash[:errors] = @transaction.errors.full_messages
      render :edit
    end
  end

  def destroy
    @transaction.destroy
    redirect_to transactions_path
  end


  private

  def find_transaction
    @transaction = Transaction.find(params[:id])
  end

  def method_name
    params.require(:transaction).permit(:vendor_id, :schedule_id)
  end

end
