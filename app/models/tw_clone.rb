class TwClone < ApplicationRecord
  #validates :content, presence: true, length: {maximum: 140, message: "１４０文字以内で入力してください"}
  validates :tw_error

  def tw_error
    if content.blank?
      errors[:base] << "つぶやきは空ではできません！！"
    end
    # if content.length >140
    #   errors[:base] << "１４０文字以内で入力してください"
    # end
  end
end
