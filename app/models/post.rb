class Post < ActiveRecord::Base
  attr_accessible :srno, :content, :name, :title
 
  validates :srno, :presence => true
  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
  has_many :comments, :dependent => :destroy
  
  
 
  end