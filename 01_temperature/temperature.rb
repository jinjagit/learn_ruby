def ftoc(farenheit)
  celsius = ((farenheit - 32) * (5.0/9)).round(1)
end

def ctof(celsius)
  farenheit = ((celsius * (9.0/5)) + 32).round(1)
end
