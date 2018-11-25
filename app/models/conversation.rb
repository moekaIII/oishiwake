class Conversation < ApplicationRecord
  belongs_to :sender, foreign_key: :sender_id, class_name: 'User'
  belongs_to :recipient, foreign_key: :recipient_id, class_name: 'User'
  has_many :messages, dependent: :destroy

  validates_uniqueness_of :sender_id, scope: :recipient_id
  scope :between, -> (sender_id,recipient_id) do
    where("(conversations.sender_id = ? AND conversations.recipient_id =?) OR (conversations.sender_id = ? AND  conversations.recipient_id =?)", sender_id,recipient_id, recipient_id, sender_id)
  end

  def target_user(current_user)
    if sender_id == current_user.id
      User.find(recipient_id)
    elsif recipient_id == current_user.id
      User.find(sender_id)
    end
  end

  PER_PAGE = 10

  def over_ten?
    messages.count > PER_PAGE
  end

  def read_and_mark_messages(all, current_user_id)
    messages.last.read = true if messages.last&.user_id.eql?(current_user_id)
    all ? messages : messages[-PER_PAGE..-1]
  end
end
