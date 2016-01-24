require 'test_helper'

class PostsTest < ActionDispatch::IntegrationTest

  #中英皆可
  test "加一篇文章" do
    # 使用內建posts.yml測試
      po = posts(:one)

      p "---"
      p po
      p "---"

      c1 = Post.count
      post posts_path, post: {title:po.title}
      assert_redirected_to posts_path
      assert_equal c1 + 1, Post.count
  end

  test "加一篇文章但是會失敗" do
      c1 = Post.count
      post posts_path, post: {title:''}
      assert_redirected_to posts_path
      assert_equal c1, Post.count
  end


  # test "the truth" do
  #   assert true
  # end
end
