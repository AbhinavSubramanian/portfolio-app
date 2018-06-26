class NestedformsController < ApplicationController
  before_action :set_nestedform, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /nestedforms
  def index
    @nestedforms = Nestedform.all
  end

  # GET /nestedforms/1
  def show
  end

  # GET /nestedforms/new
  def new
    @nestedform = Nestedform.new
    3.times { @nestedform.contents.build }
  end

  # GET /nestedforms/1/edit
  def edit
  end

  # POST /nestedforms
  def create
    @nestedform = Nestedform.new(nestedform_params)

    if @nestedform.save
      redirect_to @nestedform, notice: 'Nestedform was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /nestedforms/1
  def update
    if @nestedform.update(nestedform_params)
      redirect_to @nestedform, notice: 'Nestedform was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /nestedforms/1
  def destroy
    @nestedform.destroy
    redirect_to nestedforms_url, notice: 'Nestedform was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nestedform
      @nestedform = Nestedform.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def nestedform_params
      params.require(:nestedform).permit(:title, contents_attributes: [:name])
    end
end
