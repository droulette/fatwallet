class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :firstname, :lastname, :nickname
  # attr_accessible :title, :body
  has_many :store_favorites
  has_many :stores, :through => :store_favorites
  
  def add_store(store)
    favorites=store_favorites.build(:store_id => store.id)
    if !favorites.save
      logger.debug "Company '#{store.company}' already exists in your favorites."
    end
  end
  

  
end
