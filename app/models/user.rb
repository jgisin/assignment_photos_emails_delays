class User < ActiveRecord::Base
  after_create :send_mail

  has_attached_file :profile_photo, :styles => { :medium => "300x300", :thumb => "100x100", :jumbo => "800x400" }


  validates_attachment_content_type :profile_photo, :content_type => /\Aimage\/.*\Z/
  # def profile_photo=(profile_photo)
  #   self.profile_photo_data = profile_photo.read
  #   self.profile_photo_filename = profile_photo.original_filename
  #   self.profile_photo_mime_type = profile_photo.content_type
  # end

  def send_mail
    User.send_welcome_email(self.id)
  end

  # def send_mail
  #   User.delay.send_welcome_email(self.id)
  # end



  class << self
    def send_welcome_email(id)
        user = User.find(id)
        UserMailer.welcome_email(user).deliver!
    end
    handle_asynchronously :send_welcome_email
  end
end

