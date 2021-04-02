module PostsHelper
  def choose_action
    if action_name == 'new' || action_name == 'create'
      confirm_posts_path
    else action_name == 'edit'
      post_path
    end
  end
end
