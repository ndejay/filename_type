class String
  def to_filename
    Filename.new(self)
  end
end

class Filename
  def initialize(path)
    @path = File.expand_path(path)
  end

  method_map = {
    # Filename# => File#
    :exists?    => :exists?,
    :directory? => :directory?,
    :file?      => :file?,
    :symlink?   => :symlink?,
    :target     => :readlink,
    :realpath   => :realpath,
  }

  method_map.each do |ours, theirs|
    self.send(:define_method, ours) do |*args, &block|
      File.method(theirs).call(@path)
    end
  end

  def to_s
    @path
  end
end
