require 'carrierwave/activerecord'#
class User < ActiveRecord::Base
  has_many :messages
  mount_uploader :avatar, AvatarUploader

  # uploader = AvatarUploader.new
  # uploader.store!(:file)
  # uploader.retrieve_from_store!(:file)
end
