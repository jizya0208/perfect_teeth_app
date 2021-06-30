class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact　　#情報をviewに引き渡せる
    mail(
      from: 'system@example.com',  #送信元
      to: "moridyan606@gmail.com", 
      subject: "お問い合わせ通知"
    )
  end
end
