class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :comments
  # attr_accessor :date

  # after_create :insert_date

  # aftercreateで値を入れるメソッドをかく

  # def insert_date
  #   binding.pry
  #   self.date = params[]
  # end
  #after_createのタイミングでparamsを取れない場合
  #userのattr_accessorというものを定義する

end
