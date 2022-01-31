FactoryBot.define do
  factory :article do
    title { 'This is a wonderful header' }
    body { 'This is my article body' }
    category
    user
    edition
    after(:build) do |article|
      article.image.attach(
        io: File.open(Rails.root.join('spec', 'fixtures', 'dummy_image.jpg')),
           filename: 'attachment.jpg',
           content_type: 'image/jpg'
      )
    end
  end
end
