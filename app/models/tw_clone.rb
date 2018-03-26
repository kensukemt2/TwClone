class TwClone < ApplicationRecord
  #validates :content, presence: true, length: {maximum: 140, message: "１４０文字以内で入力してください"}
  validates :add_error_tw

  def add_error_tw
    if content.blank?
      errors[:content] << "つぶやきは空ではできません！！"
    end
    # if content.length >140
    #   errors[:base] << "１４０文字以内で入力してください"
    # end
  end
end
