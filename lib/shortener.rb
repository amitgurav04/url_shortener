module Shortener
  CHARS = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
  BASE = 62
  KEY_LENGTH = 6

  private
  def encode(id)
    code = ""
    code = convert(id, BASE)
    (code.length > KEY_LENGTH) ? "" : "0" * (KEY_LENGTH - code.length) + code
  end

  def decode(code)
    size = code.length
    if (size == 1)
      return CHARS.index(code)
    else
      return decode(code[1, size]) + CHARS.index(code[0, 1]) * BASE** (size - 1)
    end
  end

  def convert(number, base)
    quotient = number / base
    remainder = number % base
    if(quotient == 0) # base case
      return CHARS[remainder].chr
    else
      return convert(quotient, base) + CHARS[remainder].chr
    end
  end
end
