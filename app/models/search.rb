class Search

  def self.for(user, key)
    sanitized_key = "%#{key.downcase}%"
    results = user.gadgets.where('lower(name) LIKE ?', sanitized_key) + 
    user.gadgets.where('lower(description) LIKE ?', sanitized_key)
    results.uniq!
  end

end