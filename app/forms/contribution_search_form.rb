class ContributionSearchForm
  include ActiveModel::Model
  attr_accessor :title, :caption, :content
  def search
    rel = Board
    rel = rel.where(title: title) if title.present?
    rel = rel.where(caption: caption) if caption.present?
    rel = rel.joins(:post).where("post.content" > content) if content.present?
    rel
  end
  private
    def search_params
     params.permit(:title, :caption, :content)
    end
end