module PostsHelper
  def choose_action
    if action_name == 'new'
      confirm_posts_path
    else action_name == 'edit'
      post_path
  end
end
