class Post < ActiveRecord::Base

  validates :title, :author, :body, presence: true

  def slug
    title.downcase.gsub(" ", "-")
  end

  def to_param
    "#{id}-#{slug}"
  end

end
