module DefaultPageContent
    extend ActiveSupport::Concern
    
    included do
        before_action :set_page_defaults
    end
     
      def set_page_defaults
        @page_title = "Jonathan L. | My Portofolio"
        @seo_keywords = "Jonathan Li"
     end
        

end




  
  