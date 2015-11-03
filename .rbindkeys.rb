# # -*- coding:utf-8; mode:ruby; -*-

# cursor move
bind_key [KEY_CAPSLOCK, KEY_L], KEY_RIGHT
bind_key [KEY_CAPSLOCK, KEY_J], KEY_LEFT
bind_key [KEY_CAPSLOCK, KEY_I], KEY_UP
bind_key [KEY_CAPSLOCK, KEY_K], KEY_DOWN
bind_key [KEY_CAPSLOCK, KEY_H], KEY_HOME
bind_key [KEY_CAPSLOCK, KEY_SEMICOLON], KEY_END

bind_key [KEY_CAPSLOCK, KEY_O], [KEY_LEFTCTRL, KEY_RIGHT]
bind_key [KEY_CAPSLOCK, KEY_U], [KEY_LEFTCTRL, KEY_LEFT]

# select stuff
bind_key [KEY_CAPSLOCK, KEY_S], KEY_LEFTSHIFT

# delete stuff
bind_key [KEY_CAPSLOCK, KEY_D], :ignore
bind_key [KEY_CAPSLOCK, KEY_D, KEY_J], KEY_BACKSPACE
bind_key [KEY_CAPSLOCK, KEY_D, KEY_L], KEY_DELETE

# delete to beginning of row
bind_key [KEY_CAPSLOCK, KEY_D, KEY_H] do |event, operator|
  operator.press_key KEY_LEFTSHIFT
  operator.press_key KEY_HOME
  operator.release_key KEY_HOME
  operator.release_key KEY_LEFTSHIFT


  operator.release_key KEY_DELETE
end

# delete to end of row
bind_key [KEY_CAPSLOCK, KEY_D, KEY_SEMICOLON] do |event, operator|
  operator.press_key KEY_LEFTSHIFT
  operator.press_key KEY_END
  operator.release_key KEY_END
  operator.release_key KEY_LEFTSHIFT

  operator.press_key KEY_DELETE
  operator.release_key KEY_DELETE
end

# delete words
bind_key [KEY_CAPSLOCK, KEY_D, KEY_O] do |event, operator|
  operator.press_key KEY_LEFTSHIFT
  operator.press_key KEY_LEFTCTRL
  operator.press_key KEY_RIGHT
  operator.release_key KEY_RIGHT
  operator.release_key KEY_LEFTCTRL
  operator.release_key KEY_LEFTSHIFT

  operator.press_key KEY_DELETE
  operator.release_key KEY_DELETE
end
bind_key [KEY_CAPSLOCK, KEY_D, KEY_U] do |event, operator|
  operator.press_key KEY_LEFTSHIFT
  operator.press_key KEY_LEFTCTRL
  operator.press_key KEY_LEFT
  operator.release_key KEY_LEFT
  operator.release_key KEY_LEFTCTRL
  operator.release_key KEY_LEFTSHIFT

  operator.press_key KEY_DELETE
  operator.release_key KEY_DELETE
end

# delete lines
bind_key [KEY_CAPSLOCK, KEY_D, KEY_I] do |event, operator|
  operator.press_key KEY_HOME
  operator.release_key KEY_HOME

  operator.press_key KEY_LEFTSHIFT
  operator.press_key KEY_UP
  operator.release_key KEY_UP
  operator.release_key KEY_LEFTSHIFT

  operator.press_key KEY_DELETE
  operator.release_key KEY_DELETE
end
bind_key [KEY_CAPSLOCK, KEY_D, KEY_K] do |event, operator|
  operator.press_key KEY_HOME
  operator.release_key KEY_HOME

  operator.press_key KEY_LEFTSHIFT
  operator.press_key KEY_DOWN
  operator.release_key KEY_DOWN
  operator.release_key KEY_LEFTSHIFT

  operator.press_key KEY_DELETE
  operator.release_key KEY_DELETE
end
