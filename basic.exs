
x = 255                    # integer 
hex = 0xFF                 # integer as hexadecimal
bin = 0b1010               # integer as binary
oct = 0o777                # integer as octal
pi = 3.1415                # float (64-bit double precision)
mol = 6.02e+23             # float in scientific notation
active = true              # boolean
status = :ok               # atom
name = "Elixir"            # string
elements = ["A", "B", "C"] # list
response = {:ok, "Hello"}  # tuple

# IO.puts function
IO.puts(x)
IO.puts(hex)
IO.puts(bin)
IO.puts(oct)
IO.puts(pi)
IO.puts(mol)
IO.puts(active)
IO.puts(status)
IO.puts(name)
IO.puts(inspect(elements))
IO.puts(inspect(response))

# arithmetic
persons = 2
total = 20 + 80
tax = total * 0.15           # returns a float because 0.1 is a float
perPerson = (total+tax) / 2  # the operator '/' always returns a float

bills = div(115, 10)    # returns an integer
coins = rem(115, 10)    # returns an integer

IO.puts persons
IO.puts total
IO.puts tax
IO.puts perPerson
IO.puts bills
IO.puts coins

IO.puts round(3.6)     # round to 4
IO.puts trunc(3.6)     # truncate to 3

# booleans
truthy = true
falsy = false

IO.puts is_boolean(truthy)
IO.puts is_boolean(falsy)
IO.puts is_boolean(1)
IO.puts is_boolean(0)
IO.puts is_boolean(nil)

# atoms
lang = :elixir   # an atom is a constant whose name is its own value

IO.puts(lang == :elixir)
