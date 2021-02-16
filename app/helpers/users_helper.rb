module UsersHelper
    def authenticate_creator
      unless current_user.id == User.find(params['id']).id
        redirect_to root_path, :info => "Vous n'avez pas accès à ce contenu"
      end
    end
end