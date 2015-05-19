require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received(orders(:one))
    assert_equal "KWSE cloth shop confimation", mail.subject
    assert_equal ["gguggu23@gmail.com"], mail.to
    assert_equal ["depot@example.com"], mail.from
    assert_match /1 x green shirt/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderNotifier.shipped(orders(:one))
    assert_equal "KWSE cloth shop shipped", mail.subject
    assert_equal ["gguggu23@gmail.com"], mail.to
    assert_equal ["depot@example.com"], mail.from
    assert_match /<td>1&times;<\/td>\s*<td>green shirt<\/td>/, mail.body.encoded
  end

end
