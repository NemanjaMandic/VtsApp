class OrderNotifier < ApplicationMailer

 default from: 'Sam Ruby <vtsapp@example.com>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(order)
    @order = order

    mail to: order.email, subject: 'VtsApp Store Order'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped(order)
   @order = order 


    mail to: order.email, subject: 'Vtsapp Store Order Shipped'
  end
end
