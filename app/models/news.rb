class News < ApplicationRecord
  has_rich_text :content
  attachment :image
end
