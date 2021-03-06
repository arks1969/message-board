class Message < ActiveRecord::Base
    # 名前は必須入力且つ20文字以内
    validates :name , length: { maximum: 20 } , presence: true
    # 内容は必須入力且つ2文字以上30文字以下
    validates :body , length: { minimum: 2 , maximum: 30 } , presence: true
    # 年齢は3文字以下
    #validates :age , numericality: { only_integer: true } ,
    validates :age , inclusion: { in: 1..120 } , numericality: { only_integer: true }
    #validates :age , inclusion: { in: 1..100 }
end
