import random

def generate_random_hex():
    return ''.join([random.choice('0123456789ABCDEF') for _ in range(16)])

def generate_hex_file():
    with open('output.hex', 'w') as file:
        # Write header
        file.write(':020000040000FA\n')

        # Generate 1024 data lines
        for i in range(1024):
            address = format(i, '04X')
            data = generate_random_hex()
            line = f":08{address}00{data}\n"
            file.write(line)

        # Write footer
        file.write(':00000001FF\n')

if __name__ == "__main__":
    generate_hex_file()
    print("Hex file generated successfully.")
