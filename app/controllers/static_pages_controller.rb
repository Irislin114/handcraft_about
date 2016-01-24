class StaticPagesController < ApplicationController

  # layout "test"   改樣板  application.html.erb

  def home   #不一定要寫
    # puts ""   => 顯示於終端機
    # render text: "hello"   # => 出在網頁上
  end

  def about  #不一定要寫
  end

  def bmi
      if request.post?
        # params預設為字串
          h = params[:height].to_f / 100
          w = params[:weight].to_f

          # view取用變數
          @bmi = w / (h * h)

          # 取小數點第二位
          render text: @bmi.round(2)
      end
  end
end
