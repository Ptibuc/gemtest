class SitesController < ApplicationController
  before_action :set_site, only: [:show, :edit, :update, :destroy]

  def index
    @sites = Site.all
  end

  def show
  end

  def new
    @site = Site.new
  end

  def edit
  end

  def create
    @site = Site.new(site_params)

    if @site.save
      redirect_to dashboard_path, notice: 'Le site a bien été ajouté.'
    else
      render action: 'new'
    end
  end

  def update
    if @site.update(site_params)
      redirect_to @site, notice: 'Le site a bien été mis à jour.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @site.destroy
    redirect_to dashboard_path, notice: 'Site supprimé !'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site
      @site = Site.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_params
      params.require(:site).permit(:url, :system, :logo, :lang, :user_id)
    end

end
