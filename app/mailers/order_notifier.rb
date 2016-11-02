class OrderNotifier < ApplicationMailer
  default from: 'Susanoo <noreply@susanoo.com>'

  def received(order)
    @order = order

    mail to: order.email, subject: t('order_notifier.received.subject')
  end

  def shipped(order)
    @order = order

    mail to: order.email, subject: t('order_notifier.shipped.subject')
  end
end
