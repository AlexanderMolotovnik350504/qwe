class StepsController < ApplicationController
  def create
    @manual = Manual.find(params[:manual_id])
    @step = @manual.steps.build(steps_params)
    @step.save
    redirect_to @manual
  end

  def destroy
    @manual = Manual.find(params[:manual_id])
    @step = @manual.steps.find(params[:id]).destroy
    redirect_to @manual
  end

  private

  def steps_params
  	params.require(:step).permit(:name)
  end

end  	
