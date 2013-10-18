# -*- coding: utf-8 -*-

module ApplicationHelper

  def title(page_title, options={})
    content_for(:title, page_title.to_s)

    icon = options.delete(:icon)
    if icon.blank?
      content_tag :div, class: "row page-header" do
        content_tag :h1 do
          "#{page_title}"
        end
      end
    else
      content_tag :div, class: "row page-header" do
        content_tag :h1 do
          raw "#{fa_icon("user")} #{page_title}"
        end
      end
    end
  end
end
