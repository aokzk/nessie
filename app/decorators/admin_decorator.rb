# coding: utf-8
module AdminDecorator
  def avatar_link
    image_tag gravatar_url, class: "img-rounded"
  end

  private
  def gravatar_url
    gravatar_id = Digest::MD5.hexdigest(email.downcase)
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=24"
  end
end
