module TwClonesHelper
  def choose_new_or_edit
    if action_name =='new' || action_name == 'confirm'
      confirm_tw_clones_path
    else
      tw_clones_path
    end
  end
end
