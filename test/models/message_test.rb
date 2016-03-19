require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  
  def setup
    @sender = users(:michael)
    @recipent =users(:john)
    @message = @sender.sent_messages.build(content: "Test", recipent_id: @recipent.id)
  end

  test "should be valid" do
    assert @message.valid?
  end

  test "read_at should be nil initially" do
    assert @message.read_at.nil?
  end

  test "check for id" do
  	assert_equal(@sender.id, @message.sender_id)
  end
  
end
