module Pages
  class UserHome < SitePrism::Page
    #elements
    element :dashboard, 'div #dashboard'
    element :button_new_repository, '.btn.btn-sm.btn-primary'
    element :profile_icon , '.HeaderNavlink.name.mt-1'
    element :profile_user_name, '.HeaderNavlink.name.mt-1+ul .css-truncate-target'
    element :sign_out_lnk, '.logout-form .dropdown-signout'
  end
end
