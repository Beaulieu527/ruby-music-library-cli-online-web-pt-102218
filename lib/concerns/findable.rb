module Concerns::Findable
  def find_by_name(name)
    all.detect {|object| object.name == name}
  end

  def find_or_create_by_name(name)
  end
end
