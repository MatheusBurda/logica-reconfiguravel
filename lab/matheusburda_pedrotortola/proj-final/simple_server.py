import socket
import threading
import time
from datetime import datetime, timedelta

timezone_offset = 0
complete_reg_content = None

def get_input():
    global timezone_offset, client_socket, complete_reg_content
    print('Starting input thread')
    while True:
        input_str = input('')
        timezone_offset = int(input_str)
        print(f"New timezone: {timezone_offset}")
        print(f"TH: Timezone offset to: {timezone_offset} hours")
        current_time = datetime.now() + timedelta(hours=timezone_offset)
        print(f"TH: New current time: {current_time}")
        complete_reg_content = ((current_time.hour // 10) << 20) | ((current_time.hour % 10) << 16) | ((current_time.minute // 10) << 12) | ((current_time.minute % 10) << 8) | ((current_time.second // 10) << 4) | (current_time.second % 10)


if __name__ == "__main__":
    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server_socket.bind(('0.0.0.0', 7777))
    server_socket.listen(5)
    print("Server listening on port 7777")

    client_socket, addr = server_socket.accept()
    print(f"Accepted connection from {addr}")

    timezone_offset = int(input("Enter timezone offset (in hours, positive or negative): "))

    print(f"Timezone offset to: {timezone_offset} hours")
    current_time = datetime.now() + timedelta(hours=timezone_offset)
    complete_reg_content = ((current_time.hour // 10) << 20) | ((current_time.hour % 10) << 16) | ((current_time.minute // 10) << 12) | ((current_time.minute % 10) << 8) | ((current_time.second // 10) << 4) | (current_time.second % 10)

    input_thread = threading.Thread(target=get_input)
    input_thread.daemon = True  
    input_thread.start()

    print('listening to client')
    while True:

        if complete_reg_content is None:
            client_socket.sendall(('ok').encode('utf-8'))
        else:
            print(f'sending to client {complete_reg_content}\n')
            client_socket.sendall(str(complete_reg_content).encode('utf-8'))
            time.sleep(0.5)
            complete_reg_content = None

        response = client_socket.recv(1024).decode('utf-8')

        print(f"RTC Client time: {response}")

        time.sleep(0.5)
