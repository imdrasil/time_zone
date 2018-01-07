module TimeZone
  struct Time
    module CanonicalTimeClassMethods
      # Parses a Time in the given *time* string, using the given *pattern* (see
      # `Time::Format`).
      #
      # ```
      # Time.parse("2016-04-05", "%F") # => 2016-04-05 00:00:00
      # ```
      # TODO: format
      def parse(time : String, pattern : String, kind = Kind::Unspecified) : Time
        Format.new(pattern, kind).parse(time)
      end

      protected def absolute_days(year, month, day)
        days = leap_year?(year) ? DAYS_MONTH_LEAP : DAYS_MONTH

        temp = 0
        m = 1
        while m < month
          temp += days[m]
          m += 1
        end

        (day - 1) + temp + (365*(year - 1)) + ((year - 1)/4) - ((year - 1)/100) + ((year - 1)/400)
      end

      # Returns the local time offset in minutes relative to GMT.
      #
      # ```
      # # Assume in Argentina, where it's GMT-3
      # Time.local_offset_in_minutes # => -180
      # ```
      def local_offset_in_minutes
        compute_offset / SECONDS_PER_MINUTE
      end

      # Returns `seconds, nanoseconds, offset` where
      # `offset` is the number of seconds for now's timezone offset.
      protected def compute_seconds_nanoseconds_and_offset
        seconds, nanoseconds = compute_seconds_and_nanoseconds
        offset = compute_offset(seconds)
        {seconds, nanoseconds, offset}
      end

      protected def compute_offset
        seconds, nanoseconds = compute_seconds_and_nanoseconds
        compute_offset(seconds)
      end

      private def compute_offset(seconds)
        Crystal::System::Time.compute_utc_offset(seconds)
      end

      private def compute_seconds_and_nanoseconds
        Crystal::System::Time.compute_utc_seconds_and_nanoseconds
      end
    end
  end
end
