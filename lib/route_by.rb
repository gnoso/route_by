module RouteBy
  def self.included(cls)
    cls.extend(ClassMethods)
  end

  module ClassMethods
    # this enables routing functionality for an ActiveRecord model class
    def route_by(field_name, unique_by = [])
      # attach the instance methods to this class
      include InstanceMethods
      # add validation for the id
      validates_presence_of field_name
      validates_uniqueness_of field_name, :scope => unique_by
      validates_format_of field_name, :with => /\A[^\/\. ]*\Z/, :message => "may not contain the characters '/', '.' or ' '"
      # set the field_name into a class instance variable
      self.instance_variable_set(:@route_by_field_name, field_name)
    end
    
    # lookup the object by the given field_name
    def find_by_route_id(id)
      self.send("find_by_#{self.instance_variable_get(:@route_by_field_name)}", id)
    end

  end

  module InstanceMethods
    # this allows our urls to be based on the name rather than the id
    def to_param
      send(self.class.instance_variable_get(:@route_by_field_name))
    end

    def set_param(id)
      send("#{self.class.instance_variable_get(:@route_by_field_name)}=", id)
    end
  end
end