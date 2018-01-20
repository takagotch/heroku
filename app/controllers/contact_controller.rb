class ContactController < ContactController::Base

def index
  @contacts = Contact.all
  @contacts = Contact.all_cached
  @stats = Rails.cache.stats.first.last
end

end

