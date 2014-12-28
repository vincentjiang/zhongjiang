module ApplicationHelper
  def title
    @title || ENV["COMPANY_NAME"]
  end
end
