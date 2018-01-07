module TimeZone
  struct Time
    module CanonicalTimeInstanceMethods
      alias Kind = ::Time::Kind
      alias DayOfWeek = ::Time::DayOfWeek
      alias Span = ::Time::Span
      alias MonthSpan = ::Time::MonthSpan
      alias Format = ::Time::Format

      SECONDS_PER_DAY             = ::Time::SECONDS_PER_DAY
      SECONDS_PER_HOUR            = ::Time::SECONDS_PER_HOUR
      SECONDS_PER_MINUTE          = ::Time::SECONDS_PER_MINUTE
      NANOSECONDS_PER_MILLISECOND = ::Time::NANOSECONDS_PER_MILLISECOND
      UNIX_SECONDS                = ::Time::UNIX_SECONDS

      def clone : self
        self
      end

      # Returns a `Time` that is later than this `Time` by the `Time::Span` *span*.
      def +(span : Span) : Time
        add_span span.to_i, span.nanoseconds
      end

      # Returns a `Time` that is earlier than this `Time` by the `Time::Span` *span*.
      def -(span : Span) : Time
        add_span -span.to_i, -span.nanoseconds
      end

      # Adds a number of months specified by *other*'s value.
      def +(other : MonthSpan) : Time
        add_months other.value
      end

      # Subtracts a number of months specified by *other*'s value.
      def -(other : MonthSpan) : Time
        add_months -other.value
      end

      # Returns the year number (in the Common Era).
      def year : Int32
        year_month_day_day_year[0]
      end

      # Returns the month number of the year (`1..12`).
      def month : Int32
        year_month_day_day_year[1]
      end

      # Returns the day number of the month (`1..31`).
      def day : Int32
        year_month_day_day_year[2]
      end

      # Returns the hour of the day (`0..23`).
      def hour : Int32
        ((total_seconds % SECONDS_PER_DAY) / SECONDS_PER_HOUR).to_i
      end

      # Returns the minute of the hour (`0..59`).
      def minute : Int32
        ((total_seconds % SECONDS_PER_HOUR) / SECONDS_PER_MINUTE).to_i
      end

      # Returns the second of the minute (`0..59`).
      def second : Int32
        (total_seconds % SECONDS_PER_MINUTE).to_i
      end

      # Returns the millisecond of the second (`0..999`).
      def millisecond : Int32
        nanosecond / NANOSECONDS_PER_MILLISECOND
      end

      # Returns the nanosecond of the second (`0..999_999_999`).
      def nanosecond : Int32
        @nanoseconds
      end

      # Returns how much time has passed since midnight of this day.
      def time_of_day : Span
        Span.new(nanoseconds: NANOSECONDS_PER_SECOND * (total_seconds % SECONDS_PER_DAY) + nanosecond)
      end

      # Returns the day of the week (`Sunday..Saturday`).
      def day_of_week : DayOfWeek
        value = ((total_seconds / SECONDS_PER_DAY) + 1) % 7
        DayOfWeek.new value.to_i
      end

      # Returns the day number of the year (`1..365`, or `1..366` on leap years).
      def day_of_year : Int32
        year_month_day_day_year[3]
      end

      # Returns `Kind` (UTC/local) of the instance.
      def kind : Kind
        @kind
      end

      def_hash total_seconds, nanosecond

      # TODO: format
      def inspect(io : IO)
        Format.new("%F %T").format(self, io)

        case
        when utc?
          io << " UTC"
        when local?
          Format.new(" %:z").format(self, io)
        end
        io
      end

      # Formats this time using the given format (see `Time::Format`).
      #
      # ```
      # time = Time.new(2016, 4, 5)
      # time.to_s("%F") # => "2016-04-05"
      # ```
      # TODO: format
      def to_s(format : String) : String
        Format.new(format).format(self)
      end

      # Formats this time using the given format (see `Time::Format`)
      # into the given *io*.
      # TODO: format
      def to_s(format : String, io : IO) : Nil
        Format.new(format).format(self, io)
      end

      # Returns the number of seconds since the Epoch for this time.
      #
      # ```
      # time = Time.parse("2016-01-12 03:04:05 UTC", "%F %T %z")
      # time.epoch # => 1452567845
      # ```
      def epoch : Int64
        (to_utc.total_seconds - ::Time::UNIX_SECONDS).to_i64
      end

      # Returns the number of milliseconds since the Epoch for this time.
      #
      # ```
      # time = Time.parse("2016-01-12 03:04:05.678 UTC", "%F %T.%L %z")
      # time.epoch_ms # => 1452567845678
      # ```
      def epoch_ms : Int64
        epoch * 1_000 + (nanosecond / ::Time::NANOSECONDS_PER_MILLISECOND)
      end

      # Returns the number of seconds since the Epoch for this time,
      # as a `Float64`.
      #
      # ```
      # time = Time.parse("2016-01-12 03:04:05.678 UTC", "%F %T.%L %z")
      # time.epoch_f # => 1452567845.678
      # ```
      def epoch_f : Float64
        epoch.to_f + nanosecond.to_f / 1e9
      end

      private macro def_at_beginning(interval)
        # Returns the time when the {{interval.id}} that contains `self` starts.
        def at_beginning_of_{{interval.id}} : Time
          year, month, day, day_year = year_month_day_day_year
          {{yield}}
        end
      end

      private macro def_at_end(interval)
        # Returns the time when the {{interval.id}} that includes `self` ends.
        def at_end_of_{{interval.id}} : Time
          year, month, day, day_year = year_month_day_day_year
          {{yield}}
        end
      end

      # Returns the time when the week that includes `self` starts.
      def at_beginning_of_week : Time
        dow = day_of_week.value
        if dow == 0
          (self - 6.days).at_beginning_of_day
        else
          (self - (dow - 1).days).at_beginning_of_day
        end
      end

      # Returns the time when the week that includes `self` ends.
      def at_end_of_week : Time
        dow = day_of_week.value
        if dow == 0
          at_end_of_day
        else
          (self + (7 - dow).days).at_end_of_day
        end
      end

      {% for name in ::Time::DayOfWeek.constants %}
        # Does `self` happen on {{name.id}}?
        def {{name.id.downcase}}? : Bool
          day_of_week.{{name.id.downcase}}?
        end
      {% end %}

      protected def total_seconds
        @seconds
      end

      private def year_month_day_day_year
        m = 1

        days = DAYS_MONTH
        totaldays = total_seconds / SECONDS_PER_DAY

        num400 = totaldays / DAYS_PER_400_YEARS
        totaldays -= num400 * DAYS_PER_400_YEARS

        num100 = totaldays / DAYS_PER_100_YEARS
        if num100 == 4 # leap
          num100 = 3
        end
        totaldays -= num100 * DAYS_PER_100_YEARS

        num4 = totaldays / DAYS_PER_4_YEARS
        totaldays -= num4 * DAYS_PER_4_YEARS

        numyears = totaldays / 365

        if numyears == 4 # leap
          numyears = 3
        end

        year = num400*400 + num100*100 + num4*4 + numyears + 1

        totaldays -= numyears * 365
        day_year = totaldays + 1

        if (numyears == 3) && ((num100 == 3) || !(num4 == 24)) # 31 dec leapyear
          days = DAYS_MONTH_LEAP
        end

        while totaldays >= days[m]
          totaldays -= days[m]
          m += 1
        end

        month = m
        day = totaldays + 1

        {year.to_i, month.to_i, day.to_i, day_year.to_i}
      end
    end
  end
end
