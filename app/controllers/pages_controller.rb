# encoding: utf-8
class PagesController < ApplicationController
  def home
    @title = "О кафедре"
  end

  def contact
    @title = "Контакты"
  end
end
