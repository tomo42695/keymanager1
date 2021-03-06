class Rental < ActiveRecord::Base
  belongs_to :user
  belongs_to :room
  validates_presence_of :user_id, :room_id
  mount_uploader :video, VideoUploader
  def show_rent_time
    unless rent_time
      return "未登録"
    else
      "#{rent_time.strftime("%H:%M")}"
    end
  end

  def show_return_time
    unless return_time
        return "使用中/未返却"
    else
      "#{return_time.strftime("%H:%M")}"
    end
  end

  def show_date
    "#{created_at.strftime("%-m月%-d日")}"
  end

  def show_groupname
    unless groupname
      return ""
    else
      "#{groupname}"
    end
  end
end