class ContributionSearchForm
  include ActiveModel::Model
  attr_accessor :title, :caption, :content
  def search
    rel = Board
    rel = rel.where(['title LIKE ?', "%#{title}%"] ) if title.present?
    rel = rel.where(['caption LIKE ?', "%#{caption}%"]) if caption.present?
    rel = rel.joins(:posts).where(['content LIKE ?', "%#{content}%"]) if content.present? 
    rel
  end
end