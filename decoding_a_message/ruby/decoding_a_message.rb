def decode(message)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  message.tr(alphabet, alphabet.reverse)
end