# Module for comments
module AcceptsComments
  def comments
    @comments ||= []
  end

  def add_comment(comment)
    comments << comment
  end
end

# Clip class
class Clip
  attr_reader :comments

  def play
    puts "Playing #{object_id}..."
  end
end

# Video class
class Video < Clip
  include AcceptsComments
  attr_accessor :resolution
end

# Song class
class Song < Clip
  include AcceptsComments
  attr_accessor :beats_per_minute
end

# Photo class
class Photo
  include AcceptsComments
  def show
    puts "Displaying #{object_id}..."
  end
end

video = Video.new
video.add_comment('Cool slow motion effect!')
video.add_comment('Weird ending.')
song = Song.new
song.add_comment('Awesome beat.')

p video.comments, song.comments

photo = Photo.new
photo.add_comment('Beautiful colors!')
p photo.comments
photo.show
