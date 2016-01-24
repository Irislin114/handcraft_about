module PostsHelper
  def tw_calendar(the_date)
    content_tag :div do
      "民國 #{the_date.year-1911} 年 #{the_date.month} 月 #{the_date.day} 日"
    end
  end
end
