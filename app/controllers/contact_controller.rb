class ContactController < ApplicationController

  def index
    @pr_admin = User.find(:first, :conditions => { :is_pr_admin => true })
  end

end
