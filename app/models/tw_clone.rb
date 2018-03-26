class TwClone < ApplicationRecord
  validates :content, length: {minimum: 0, maximum: 140, message: "空では登録できません。１４０文字以内で入力してください"}

end
