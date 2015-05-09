# Preview all emails at http://localhost:3000/rails/mailers/order_notifier
class OrderNotifierPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/order_notifier/received
  def received
    order = Order.new(name: 'Dave', email: 'dave@mail.com', address: 'Princeton', pay_type: :check)
    OrderNotifier.received(order)
  end

  # Preview this email at http://localhost:3000/rails/mailers/order_notifier/shipped
  def shipped
    order = Order.new(name: 'Dave', email: 'dave@mail.com', address: 'Princeton', pay_type: :check)
    OrderNotifier.shipped(order)
  end
end
