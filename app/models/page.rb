class Page < ActiveRecord::Base
  validates :title, presence: { message:"タイトルを入力してください"}
  validates :content, presence:{ message:"内容を入力してください"}
  validates :email, :format => { :with => %r{.+@.+\..+} ,message:"正しくメールアドレスを入力してください"}
end
