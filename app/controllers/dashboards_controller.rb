class DashboardsController < ApplicationController
  # before_action :set_dashboard, only: [:show, :edit, :update, :destroy]

  # GET /dashboards
  # GET /dashboards.json
  def index
    # @dashboards = Subscription.all
    @dashboards = Subscription.select("month, year, sum(amount) as revenue").group("year", "month").order("YEAR DESC", "month DESC")
  end

  def monthly_revenue
    year = params['year']
    month_id = params['month']
    @dashboard_monthly = Subscription.all.where(year: year, month: month_id)
  end

  private
    
end
