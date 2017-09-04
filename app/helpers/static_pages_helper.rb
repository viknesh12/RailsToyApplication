module StaticPagesHelper
    
    def get_page_name(pageName = "")
        pageNam = pageName
        if pageName == ""
           pageNam = "home" 
        end    
        pageNam
    end 
    
end
