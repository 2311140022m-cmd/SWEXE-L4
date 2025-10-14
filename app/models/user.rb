require 'bcrypt'

class User < ApplicationRecord
  include BCrypt

  # パスワードをハッシュ化して保存するメソッド
  def password=(new_pass)
    self.pass = Password.create(new_pass)
  end

  # 入力されたパスワードと比較するメソッド
  def authenticate(input_pass)
    Password.new(self.pass) == input_pass
  end
end

