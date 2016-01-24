class ContactMailer < ApplicationMailer
  def sent_notification(contact)  #將subject傳進來
    @contact = contact
    mail to:"iris5968327@naver.com", subject: @contact.subject
  end
end
