class Qna < ActiveRecord::Base
	has_many :comments
	validates :question, :presence => { :message => "Write at least a word"}
end
