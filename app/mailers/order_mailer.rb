class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.receipt.subject
  #
  def receipt(order)
    # we want to use @order in our views
    @order = order

    mail to: @order.email, subject:"Thank you for ordering from Anotherpin Co"
  end
end
