require 'shortener'
class Link < ActiveRecord::Base
  include Shortener
  include SimpleCaptcha::ModelHelpers
  apply_simple_captcha :message => "Please enter the correct image characters.", :add_to_base => true
  MAX = 56800235583

  before_create :generate_random_id
  after_create :update_input_url

  validates :output_url, :http_status, :presence => true
  validates :input_url, :uniqueness => true

  private
  def update_input_url
    key = encode(self.id)
    self.update_attributes(:input_url => key)
  end

  def generate_random_id
    begin
      self.id = SecureRandom.random_number(MAX)
    end while Link.where(id: self.id).exists?
  end

end
