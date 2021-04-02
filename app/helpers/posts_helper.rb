module PostsHelper
  def choose_action
    if action_name == 'new'
    
    else action_name == 'edit'
      post_path
  end
end
