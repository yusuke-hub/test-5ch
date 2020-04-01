class ContributionSearchForm
  include ActiveModel::Model
  attr_accessor :title, :caption, :content
  def search
    rel = Board
    rel.where(['title LIKE ?', "%#{title}%"] ) if title.present?
    rel.where(['caption LIKE ?', "%#{caption}"]) if caption.present?
    rel.joins(:posts).where(posts: ['content LIKE ?', "%#{content}%"]) if content.present? 
    rel
  end
end