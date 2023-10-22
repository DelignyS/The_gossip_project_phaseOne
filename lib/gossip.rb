require 'csv'
require 'pry'

class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save
    CSV.open("db/gossip.csv", "a+") do |stored|
      stored << [@author, @content] 
    end
  end
end

#binding.pry
