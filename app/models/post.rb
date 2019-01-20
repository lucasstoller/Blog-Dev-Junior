class Post < ActiveRecord::Base    
    validates :title, presence: { in: true, message: "O post deve ter um título, mané!" }
    validates :body, presence: { in: true, message: "Como vai postar algo sem conteúdo, vacilão?" }
    validates :thumbnail, presence: { in: true, message: "Uma imagem vale mais que mil palavras." }
    validates :category, presence: { in: true, message: "Custa nada escolher uma categoria pro teu post, mano..." }

    belongs_to :category

    mount_uploader :thumbnail, ThumbnailUploader
end
