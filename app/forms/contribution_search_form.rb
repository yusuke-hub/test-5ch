class ContributionSearchForm
  include ActiveModel::Model
  attr_accessor :title, :caption, :content
  def search
    rslt1 = Board.where('title like ?', "%#{title}%" ) if title.present?
    rslt2 = [rslt1] + Board.where('caption like ?', "%#{caption}%") if caption.present?
    rslt3 = [rslt2] + Board.joins(:posts).where('content like ?', "%#{content}%") if content.present? 
    rslt3
  end
end