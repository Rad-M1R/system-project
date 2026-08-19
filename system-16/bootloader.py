import os
import sys
import subprocess

def main():
    os.system('title BootRAD')
    
    while True:
        os.system('cls')
        print("""select OS
    __________
   |cmd       |
   |system-16 |
   |secret    |
   |shutdown  |
   |__________|""")
        
        choice = input("OS selected is ")
        
        if choice.lower() == "cmd":
            subprocess.Popen(['cmd'])
            break
        elif choice.lower() == "system-16":
            if os.path.isdir("sys16"):
                os.chdir("sys16")
                subprocess.Popen(['system-16.py'], shell=True)
        elif choice.lower() == "secret":
            print("DSK/HD2 not found")
            input()
            continue
        elif choice.lower() in ["power off", "5", "shutdown"]:
            break
        else:
            print("Invalid OS")
            import time
            time.sleep(1)
            continue

if __name__ == "__main__":
    main()