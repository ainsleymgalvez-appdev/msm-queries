Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  ger("/directors", {:controller => "directors", :action => "index"})
end
