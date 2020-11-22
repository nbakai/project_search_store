module ApplicationHelper
    def avatar_for(user, width = '200', height = '200')
        @avatar = user.avatar
        if !@avatar.attached?
            @avatar_user = image_tag("shiba.jpg", alt: user.name, width: width, height: height)
        else
            @avatar_user = image_tag(@avatar, alt: user.name, width: width, height: height)
        end
        return @avatar_user
    end
end
