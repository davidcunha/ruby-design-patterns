#Adapter Pattern

require 'lostechies_text_object' #original class

#add some methods to original class
class LosTechiesTextObject

  def sponsor
    return friend_of_pablo
  end

  def blogger
    return follower_of_pablo
  end

end