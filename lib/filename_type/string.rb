require_relative 'filename'

class String
  def to_filename
    Filename.new(dup)
  end

  def to_filename!
    Filename.new(File.expand_path(dup))
  end
end
