module ProfilesHelper
  def can_edit_profile?(current_profile,profile)
    # current_profile is nil if no user is logged in
    if current_profile == profile || (current_profile && current_profile.is_admin?)
      true
    else
      false
    end
  end
end
