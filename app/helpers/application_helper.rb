module ApplicationHelper
    
    def get_base_title(pageTitle = "")
        pageTit = "Ruby Rails Page"
        if pageTitle != ""
           pageTit = "Ruby Rails #{pageTitle} Page" 
        end    
        pageTit
    end    
end
