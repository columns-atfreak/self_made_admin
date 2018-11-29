class Admin::ColumnsController < ApplicationController
  before_action :set_admin_column, only: [:show, :edit, :update, :destroy]

  # GET /admin/columns
  # GET /admin/columns.json
  def index
    @admin_columns = Admin::Column.all
  end

  # GET /admin/columns/1
  # GET /admin/columns/1.json
  def show
  end

  # GET /admin/columns/new
  def new
    @admin_column = Admin::Column.new
  end

  # GET /admin/columns/1/edit
  def edit
  end

  # POST /admin/columns
  # POST /admin/columns.json
  def create
    @admin_column = Admin::Column.new(admin_column_params)

    respond_to do |format|
      if @admin_column.save
        format.html { redirect_to @admin_column, notice: 'Column was successfully created.' }
        format.json { render :show, status: :created, location: @admin_column }
      else
        format.html { render :new }
        format.json { render json: @admin_column.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/columns/1
  # PATCH/PUT /admin/columns/1.json
  def update
    respond_to do |format|
      if @admin_column.update(admin_column_params)
        format.html { redirect_to @admin_column, notice: 'Column was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_column }
      else
        format.html { render :edit }
        format.json { render json: @admin_column.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/columns/1
  # DELETE /admin/columns/1.json
  def destroy
    @admin_column.destroy
    respond_to do |format|
      format.html { redirect_to admin_columns_url, notice: 'Column was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_column
      @admin_column = Admin::Column.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_column_params
      params.fetch(:admin_column, {})
    end
end
