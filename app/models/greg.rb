class Greg < ActiveRecord::Base
  belongs_to :head
  has_attached_file :photo,
    :storage => :s3,
    :bucket => ENV['S3_BUCKET'],
    :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET']
    }

  def after_initialize
    self.scale ||= 1
    self.x ||= 0
    self.y ||= 0
  end

  def style
    {
      :position           => :absolute,
      :top                => "#{y}px",
      :left               => "#{x}px",
      "transform"         => "scale(#{scale})",
      "-moz-transform"    => "scale(#{scale})",
      "-webkit-transform" => "scale(#{scale})"
    }.map { |k,v| "#{k}: #{v}" }.join(';')
  end
end
