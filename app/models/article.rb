class Article < ApplicationRecord
  include OrderableByTimestamp
  validates_presence_of :title, :body, :category_id
  belongs_to :category
  belongs_to :user
  belongs_to :edition
  has_one_attached :image

  def serialized
    if Rails.env.test?
      ActiveStorage::Blob.service.path_for(image.key)
    else
      image.service_url(expires_in: 1.hour,
                        disposition: 'inline')
    end
  end
end
