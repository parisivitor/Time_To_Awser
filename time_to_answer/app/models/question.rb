class Question < ApplicationRecord
  belongs_to :subject, counter_cache: true, inverse_of: :questions
  has_many :answers
  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true

  paginates_per 15

  validates :description, presence: true, allow_blank: false

  # Por classes
  # def self.search(term, page)
  #   includes(:answers).where("lower(description) LIKE ?", "%#{term.downcase}%").page(page)
  # end

  # def self.ordenation_desc(page)
  #   includes(:answers).order('created_at desc').page(page)
  # end

  # Por scopes
  scope :_search_, -> (term, page) {
      includes(:answers,  :subject)
      .where("lower(description) LIKE ?", "%#{term.downcase}%")
      .page(page)
    }

  scope :_search_subject_, -> (subject_id, page) {
    includes(:answers, :subject)
    .where(subject_id: subject_id)
    .page(page)
  }

  scope :ordenation_desc, -> (page) {
    includes(:answers,  :subject)
    .order('created_at desc')
    .page(page)
  }

  scope :paginate, -> { page(page)}


end
