class UsersController < ApplicationController
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem
  
  before_filter :login_required, :except => [:index, :new, :create, :show]
  
  #prawnto :prawn => { :top_margin => 75 }

  # render show.rhtml
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end
  
  # render index.rhtml
  def index
    
    @users = User.find(:all, :order => 'is_admin, is_pr_admin, is_coach, login')
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
	  #format.pdf  #{  }
    end
  end

  # render new.rhtml
  def new
  end

  def create
    cookies.delete :auth_token
    # protects against session fixation attacks, wreaks havoc with 
    # request forgery protection.
    # uncomment at your own risk
    # reset_session
    @user = User.new(params[:user])
    @user.save
    if @user.errors.empty?
      if !logged_in?
	    self.current_user = @user
        flash[:notice] = "Kul att du registrerade dig!"
	    redirect_back_or_default(root_path)
      else
        flash[:notice] = "Person registrerad."
	    redirect_to(users_path)
	  end
    else
      render :action => 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        flash[:notice] = 'Medlem uppdaterades!'
        format.html { redirect_to(@user) }
        format.xml  { head :ok }
      else
        flash[:warning] = 'Fel uppstod.'
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def destroy
  	@user = User.find(params[:id])
	@user.destroy

	respond_to do |format|
	  format.html { redirect_to(users_url) }
	  format.xml  { head :ok }
	end
  end

end
