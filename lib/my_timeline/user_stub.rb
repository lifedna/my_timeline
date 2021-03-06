module MyTimeline
  class UserStub
    def self.events
      Event
    end

    def self.settings
      RailsSettings::SettingObject
    end

    def self.id
      nil
    end

    def self.save!
      true
    end

    def self.method_missing(meth, *args, &blk)
      if meth.to_s =~ /^find_by/
        UserStub
      else
        super
      end
    end
  end
end
