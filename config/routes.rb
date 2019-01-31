Rails.application.routes.draw do
  # Routes for the Message resource:

  # CREATE
  get("/messages/new", { :controller => "messages", :action => "new_form" })
  post("/create_message", { :controller => "messages", :action => "create_row" })

  # READ
  get("/messages", { :controller => "messages", :action => "index" })
  get("/messages/:id_to_display", { :controller => "messages", :action => "show" })

  # UPDATE
  get("/messages/:prefill_with_id/edit", { :controller => "messages", :action => "edit_form" })
  post("/update_message/:id_to_modify", { :controller => "messages", :action => "update_row" })

  # DELETE
  get("/delete_message/:id_to_remove", { :controller => "messages", :action => "destroy_row" })

  #------------------------------

  # Routes for the Match resource:

  # CREATE
  get("/matches/new", { :controller => "matches", :action => "new_form" })
  post("/create_match", { :controller => "matches", :action => "create_row" })

  # READ
  get("/matches", { :controller => "matches", :action => "index" })
  get("/matches/:id_to_display", { :controller => "matches", :action => "show" })

  # UPDATE
  get("/matches/:prefill_with_id/edit", { :controller => "matches", :action => "edit_form" })
  post("/update_match/:id_to_modify", { :controller => "matches", :action => "update_row" })

  # DELETE
  get("/delete_match/:id_to_remove", { :controller => "matches", :action => "destroy_row" })

  #------------------------------

  # Routes for the Bio resource:

  # CREATE
  get("/bios/new", { :controller => "bios", :action => "new_form" })
  post("/create_bio", { :controller => "bios", :action => "create_row" })

  # READ
  get("/bios", { :controller => "bios", :action => "index" })
  get("/bios/:id_to_display", { :controller => "bios", :action => "show" })

  # UPDATE
  get("/bios/:prefill_with_id/edit", { :controller => "bios", :action => "edit_form" })
  post("/update_bio/:id_to_modify", { :controller => "bios", :action => "update_row" })

  # DELETE
  get("/delete_bio/:id_to_remove", { :controller => "bios", :action => "destroy_row" })

  #------------------------------

  # Routes for the Photo resource:

  # CREATE
  get("/photos/new", { :controller => "photos", :action => "new_form" })
  post("/create_photo", { :controller => "photos", :action => "create_row" })

  # READ
  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:id_to_display", { :controller => "photos", :action => "show" })

  # UPDATE
  get("/photos/:prefill_with_id/edit", { :controller => "photos", :action => "edit_form" })
  post("/update_photo/:id_to_modify", { :controller => "photos", :action => "update_row" })

  # DELETE
  get("/delete_photo/:id_to_remove", { :controller => "photos", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get("/", { :controller => "game", :action => "home"})
 
  get("/restart", { :controller => "game", :action => "restart"})
  
  post("/player_move", {:controller => "game", :action => "player_move"})
  
  #post("/update_photo/:id_to_modify", { :controller => "photos", :action => "update_row" })

end