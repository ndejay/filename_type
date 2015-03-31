class String
  def to_fn
    Filename.new(dup)
  end

  def to_fn!
    Filename.new(File.expand_path(dup))
  end
end

class Filename < String
  method_map = {
    # Filename# => File#
    :exists?    => :exists?,
    :directory? => :directory?,
    :file?      => :file?,
    :symlink?   => :symlink?,
    :target     => :readlink,
    :realpath   => :realpath,
  }

  # Filename#method calls File.method(filename)
  method_map.each do |ours, theirs|
    send(:define_method, ours) do |*args, &block|
      File.method(theirs).call(dup)
    end
  end
end
