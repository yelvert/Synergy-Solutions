class Post < ActiveRecord::Base
  belongs_to :poster, :class_name => "Admin"
  
  def blog_id
    "#{self.id}-#{self.title.downcase.gsub(/[^a-z0-9]/, "-")}"
  end
end
