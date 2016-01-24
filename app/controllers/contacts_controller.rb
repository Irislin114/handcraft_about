class ContactsController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create
    # @contact = Contact.new(params[:contact])
    
    @contact = Contact.new(contact_params)


    if @contact.save
      # 成功
      # 一次性訊息
      flash[:notice] = "成功送出！"
      # 轉址
      # 回到Contact頁面
      redirect_to root_path
      # redirect_to contacts_path

    else
      # 失敗
      flash[:notice] = "送出失敗！"
      # 借index的頁面來用
      #scaffold index要換成new
      render action: :index
    end
    # Test
    # render text: params[:contact][:email]
  end

  #Strong Parameter
  private   #只在此類別使用
  def contact_params
    params.require(:contact).permit(:subject, :email, :content)
                  #resource  #允許寫入
  end
end
