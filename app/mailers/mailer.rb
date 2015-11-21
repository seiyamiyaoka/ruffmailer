class Mailer < ApplicationMailer
default from: "from@example.com"

       
  def sendmail(page)
    
    @page = page
    mail(to: page.email,subject:'依頼がありました')
  end
end
