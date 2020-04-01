class ContributionSearchForm
  include ActiveModel::ActiveModel
  attr_accessor :title,:caption, :content
  def search
    rel = Board
    rel = rel.where(title: title) if title.present?
    rel = rel.where(caption: caption) if caption.present?
    rel = rel.joins(:post).where("post.content" =&gt; content) if content.present?
    rel
  end
end