class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :comments

   # after_create :メソッド名

  # aftercreateで値を入れるメソッドをかく

  # def メソッド名

  #after_createのタイミングでparamsを取れない場合
  #userのattr_accessorというものを定義する

end
