class UserMailer < ApplicationMailer
    default from: "no-reply@jungle.com"

    def purchase_confirmation(order)
        @order = order
        @url  = 'http://example.com/'
        mail(to: order.email, subject: 'Order #:#{order.id}')
    end
end
