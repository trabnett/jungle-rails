module ApplicationHelper

    def show_logged_in_user
        if current_user
            "<span> Welcome: #{current_user.first_name} </span>"
        else
            ""
        end
    end
end
