class Post < ActiveRecord::Base
    belongs_to :category

    validates :title, presence: { in: true, message: "O post deve ter um título, mané!" }
    validates :body, presence: { in: true, message: "Como vai postar algo sem conteúdo, vacilão?" }
    validates :thumbnail, presence: { in: true, message: "Uma imagem vale mais que mil palavras." }
    validates :category_id, presence: { in: true, message: "Custa nada escolher uma categoria pro teu post, mano..." }
    
    mount_uploader :thumbnail, ThumbnailUploader

    def to_s
        "#{self.title}\n#{self.body}\n#{self.thumbnail}\n#{self.category_id}"
    end
end
