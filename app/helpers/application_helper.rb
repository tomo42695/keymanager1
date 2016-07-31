module ApplicationHelper
  def menu_helper
    ret = ""
    if user_signed_in?
      ret += "<li>#{link_to "ログアウト", destroy_user_session_path, method: :delete}</li>"
      ret += "<li>#{link_to "投稿する", new_rental_path}<li>"
    else
      ret += "<li>#{link_to "ログイン", new_user_session_path}</li>" unless params[:controller].include?('sessions') && params[:action] == 'new'
      ret += "<li>#{link_to "新規登録", new_user_registration_path}</li>" unless params[:controller].include?('registrations') && params[:action] == 'new'
    end
    ret.html_safe
  end
end
