class StaticPagesController < ApplicationController

  # layout "test"   改樣板  application.html.erb

  def home   #不一定要寫
    # puts ""   => 顯示於終端機
    # render text: "hello"   # => 出在網頁上
  end

  def about  #不一定要寫
  end
end
