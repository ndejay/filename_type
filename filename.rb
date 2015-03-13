class String
  def to_filename
    Filename.new(self)
  end
end

class Filename
  def initialize(path)
    @path = File.expand_path(path)
  end

  def exists?
    File.exists?(@path)
  end

  def directory?
    File.directory?(@path)
  end

  def file?
    File.file?(@path)
  end

  def symlink?
    File.symlink?(@path)
  end

  def readlink
    File.readlink(@path)
  end

  def realpath
    File.realpath(@path)
  end

  def to_s
    @path
  end
end
