class TimesheetsController < ApplicationController
  def index
    @timesheets = Timesheet.all
  end

  def new
    @timesheet = Timesheet.new
  end

  def create
    @timesheet = Timesheet.new(timesheet_params)
    if @timesheet.save
      redirect_to timesheets_path, notice: 'the timesheet has been added'
    else
      flash[:errors] = @timesheet.errors.full_messages.join(' ')
      render 'new', status: :unprocessable_entity
    end
  end

  # private
  def timesheet_params
    params.require(:timesheet).permit(:user_id, :check_in, :check_out, :day)
  end

  # def show
  #     @timesheet=Timesheet.find(params[:id])
  # end

  def edit
    @timesheet = Timesheet.find(params[:id])
    @users = User.all
  end

  def update
    @timesheet = Timesheet.find(params[:id])

    if @timesheet.update_attributes(timesheet_params)
      redirect_to @timesheet
    else
      render 'edit'
    end
  end

  def destroy
    @timesheet = Timesheet.find(params[:id])
    @timesheet.destroy
    redirect_to timesheets_path, notice: 'The timesheet has been deleted'
  end
end
