class ContactController < ContactController::Base

def index
  @contacts = Contact.all
  @contacts = Contact.all_cached
  @stats = Rails.cache.stats.first.last
end

def update
  expire_action :action => :show
end

def destroy
  expire_action :action => :show
end

end

