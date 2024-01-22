def password(string)
  string.match? /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{8,}$/
end