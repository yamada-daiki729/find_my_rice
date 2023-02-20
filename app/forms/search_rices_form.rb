class SearchRicesForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :name, :string
  attribute :rice_prefecture, :integer
  attribute :status_category, :integer

  validate :office_is_exist

  def search
    return [] if invalid?
    relation = Rice.distinct
    relation = relation.search_name(name) if name.present?
    relation = relation.search_prefecture(rice_prefecture) if rice_prefecture.present?
    relation = relation.status_categorise(status_category) if status_category.present?
    return relation
  end

  def office_is_exist
    byebug
        if  attributes[:name].nil? ||attributes[:rice_prefecture].nil? || attributes[:status_category].nil?
            errors.add("は存在しません。")
        end
    end
end
