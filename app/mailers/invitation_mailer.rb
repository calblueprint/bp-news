class InvitationMailer < ActionMailer::Base
  default :from => "#{Rails.application.name} " <<
    "<nobody@#{Rails.application.domain}>"

  def invitation(invitation)
    @invitation = invitation

    puts "[USER_DEBUG] attempting to email " + invitation.email + " ..."
    mail(
      :to => invitation.email,
      subject: "[#{Rails.application.name}] You have been invited to " <<
        Rails.application.name
    )
    puts "[USER_DEBUG] invitation to " + invitation.email + " mailed successfully"
  end
end
