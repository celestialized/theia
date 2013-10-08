module Theia

  # A recording contains up to 24 frames in consequetive order.
  class Recording

    MAX_FRAMES = 24

    attr_reader :frames

    def initialize
      @frames = []
    end

    # Adds a frame to this recording. Pops off the first one, if it has hit
    # the max amount of frames allowed.
    def add_frame(frame)
      @frames << frame

      @frames.delete_at(0) if frames.size > MAX_FRAMES

      @frames
    end

  end
end
