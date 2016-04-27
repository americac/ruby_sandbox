class Clip
  attr_reader :comments

  def initialize
    @comments = []
  end

  def play
    puts "Playing #{object_id}..."
  end
end

class Video < Clip
  attr_accessor :resolution
end

class Song < Clip
  attr_accessor :beats_per_minute
end

module AcceptsComments
  def comments
    if @comments
      @comments
    else
      @comments = []
    end
  end

  def add_comment(comment)
    comments << comment
  end
end

video = Video.new
video.add_comment("Cool slow motion effect!")
video.add_comment("Weird ending.")
song = Song.new
song.add_comment("Awesome beat.")

p video.comments, song.comments
