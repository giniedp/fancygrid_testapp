module ApplicationHelper
  
  def current_company
    id = params[:controller] == "companies" ? params[:id] : params[:company_id]
    @current_company ||= Company.find_by_id(id)
    @current_company
  end
end
