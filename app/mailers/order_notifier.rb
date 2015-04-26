class OrderNotifier < ApplicationMailer
  default from: 'Susanoo <noreply@susanoo.com>'

  def received(order)
    @order = order

    mail to: order.email, subject: 'Susanoo Order Confirmation'
  end

  def shipped(order)
    @order = order

    mail to: order.email, subject: 'Susanoo Order Shipped'
  end
end
