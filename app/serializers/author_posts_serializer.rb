class AuthorPostSerializer < ActiveModel::Serializer
    attributes :short_content
   
    def short_content
      "#{self.object.title} - #{self.object.content[0..39]}..."
    end
  
    has_many :tags
   
  end