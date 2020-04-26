class Api::V1::PlansController < ApplicationController
  before_action set_plan only: [:show, :create, :update, :destroy]

  def index
    @plans = Plan.all
    render json: @plans, status: 200
  end

  def show
    render json: @plan, status: 200
  end

  def create
    render json: @plan, status: 200
  end

  def update
    @plan.update(plan_params)
    render json: @plan, status:200
  end

  def destroy
    @plan.delete
    render json: {planId: @plan.id}
  end

  private

  def set_plan
    @plan = Plan.find(params[:id])
  end

  def plan_params
    params.require(:plan).permit(:body)
  end


end
