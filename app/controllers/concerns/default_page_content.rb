module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "PortFolio Website"
    @seo_keywords = "Default PortFolio"
  end
  
end
