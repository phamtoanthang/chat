class Message < ActiveRecord::Base
	belongs_to :sender, class_name: "User", foreign_key: "sender_id"
	belongs_to :recipent, class_name: "User", foreign_key: "recipent_id"
	validates :sender_id, presence: true
	validates :recipent_id, presence: true
	validates :content, presence: true

	def is_read
      !self.read_at.nil?
    end

end
