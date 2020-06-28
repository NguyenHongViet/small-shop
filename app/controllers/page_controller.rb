class PageController < ApplicationController
  def home ;end

  def product; end

  def cart; end

  def transport; end

  def payment; end

  def success; end

  def questions
    render layout: "login"
  end
end
