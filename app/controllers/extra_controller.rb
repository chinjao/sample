class ExtraController < ApplicationController

  def sendmail
    user = User.find(6)
    @mail = NoticeMailer.sendmail_confirm(user).deliver
    render text: 'メールが正しく送信できました。'
  end

  def paging
    @books = Book.order('published DESC').
      paginate(page: params[:page], per_page: 5)
  end
end
