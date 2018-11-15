class RequestMailer < ApplicationMailer
  def request_mail(favorite)
    @request = favorite

    mail to:"自分のメアド", subject: "料理依頼のお知らせ"
  end
end
