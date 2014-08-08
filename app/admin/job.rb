ActiveAdmin.register Job do
  #               __ _      
  #  __ ___ _ _  / _(_)__ _ 
  # / _/ _ \ ' \|  _| / _` |
  # \__\___/_||_|_| |_\__, |
  #                   |___/ 
  menu 
  permit_params :notes, :full_street_address

  #  _         _         
  # (_)_ _  __| |_____ __
  # | | ' \/ _` / -_) \ /
  # |_|_||_\__,_\___/_\_\
                       
  #   __ _ _ _           
  #  / _(_) | |_ ___ _ _ 
  # |  _| | |  _/ -_) '_|
  # |_| |_|_|\__\___|_|  
                       
  #   __               
  #  / _|___ _ _ _ __  
  # |  _/ _ \ '_| '  \ 
  # |_| \___/_| |_|_|_|

  form do |f|
    f.inputs do
      f.input :full_street_address
      f.input :notes
    end
    f.actions
  end
                     
  #     _               
  #  __| |_  _____ __ __
  # (_-< ' \/ _ \ V  V /
  # /__/_||_\___/\_/\_/ 
  show do |job|
    attributes_table do
      row :latitude
      row :longitude
      row :full_street_address
      row :notes
    end
    active_admin_comments
  end
end
