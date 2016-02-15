class NoticeMailer < ActionMailer::Base
  # layout 'mail'

  default from: 'webmaster@wings.msn.to',
          cc: 'CQW15204@nifty.com'
  def sendmail_confirm(user) 
    @user = user
    # attachments['seal.jpg'] = 
    #   File.read(Rails.root.join('tmp/data/seal.jpg'))
    # attachments.inline['wings.jpg'] = 
    #   File.read(Rails.root.join('tmp/data/wings.jpg'))
     mail(to: user.email, 
          subject: 'ユーザ登録ありがとうございました')

    # headers[:reply_to] = 'hoge@wings.msn.to'
    # headers({ reply_to: 'hoge@wings.msn.to',  bcc: 'nami@wings.msn.to'})

    # @user = user
    # mail(to: user.email, 
    #     subject: 'ユーザ登録ありがとうございました') do |format|
    #   format.text { render inline: 'HTML対応クライアントで受信ください' }
    #   format.html
    # end

  end
end
