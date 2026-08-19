import os
import time
import subprocess
import sys

def cls():
    os.system('cls' if os.name == 'nt' else 'clear')

def print_an(level):
    # :: Кадр 1
    cls()
    print("                                 _________")
    print("|   ____  \\")
    print("                                 |  |1 __|  |")
    print("|  |_|__|_/")
    print("                                 |    __  \\")
    print("|   |  \\  \\")
    print("                                 |___|   \\__\\")
    wait()

    # :: Кадр 2
    cls()
    print("                                _________")
    print(" |   ____  \\")
    print("                               |  |1 __|  |")
    print(" |  |_|__|_/")
    print("                               |    __  \\")
    print(" |   |  \\  \\")
    print("                               |___|   \\__\\")
    wait()

    # :: Кадр 3
    cls()
    print("                               _________")
    print("  |   ____  \\")
    print("                              |  |1 __|  |")
    print("  |  |_|__|_/")
    print("                              |    __  \\")
    print("  |   |  \\  \\")
    print("                              |___|   \\__\\")
    wait()

    # :: Кадр 4
    cls()
    print("                              _________")
    print("   |   ____  \\")
    print("                             |  |1 __|  |")
    print("   |  |_|__|_/")
    print("                             |    __  \\")
    print("   |   |  \\  \\")
    print("                             |___|   \\__\\")
    wait()

    # :: Кадр 5
    cls()
    print("                             _________")
    print("    |   ____  \\")
    print("                            |  |1 __|  |")
    print("    |  |_|__|_/")
    print("                            |    __  \\")
    print("    |   |  \\  \\")
    print("                            |___|   \\__\\")
    wait()

    # :: Кадр 6
    cls()
    print("                            _________")
    print("     |   ____  \\")
    print("                           |  |1 __|  |")
    print("     |  |_|__|_/")
    print("                           |    __  \\")
    print("     |   |  \\  \\")
    print("                           |___|   \\__\\")
    wait()

    # :: Кадр 7
    cls()
    print("                           _________")
    print("      |   ____  \\")
    print("                          |  |1 __|  |")
    print("      |  |_|__|_/")
    print("                          |    __  \\")
    print("      |   |  \\  \\")
    print("                          |___|   \\__\\")
    wait()

    # :: Кадр 8
    cls()
    print("                          _________")
    print("       |   ____  \\")
    print("                         |  |1 __|  |")
    print("       |  |_|__|_/")
    print("                         |    __  \\")
    print("       |   |  \\  \\")
    print("                         |___|   \\__\\")
    wait()

    # :: Кадр 9
    cls()
    print("                         _________")
    print("        |   ____  \\")
    print("                        |  |1 __|  |")
    print("        |  |_|__|_/")
    print("                        |    __  \\")
    print("        |   |  \\  \\")
    print("                        |___|   \\__\\")
    wait()

    # :: Кадр 10
    cls()
    print("                        _________")
    print("         |   ____  \\")
    print("                       |  |1 __|  |")
    print("         |  |_|__|_/")
    print("                       |    __  \\")
    print("         |   |  \\  \\")
    print("                       |___|   \\__\\")
    wait()

    # :: Кадр 11
    cls()
    print("                       _________")
    print("          |   ____  \\")
    print("                      |  |1 __|  |")
    print("          |  |_|__|_/")
    print("                      |    __  \\")
    print("          |   |  \\  \\")
    print("                      |___|   \\__\\")
    wait()

    # :: Кадр 12
    cls()
    print("                      _________")
    print("           |   ____  \\")
    print("                     |  |1 __|  |")
    print("           |  |_|__|_/")
    print("                     |    __  \\")
    print("           |   |  \\  \\")
    print("                     |___|   \\__")
    wait()

    # :: Кадр 13
    cls()
    print("                     _________")
    print("            |   ____  \\")
    print("                    |  |1 __|  |")
    print("            |  |_|__|_/")
    print("                    |    __  \\")
    print("            |   |  \\  \\")
    print("                    |___|   \\__\\")
    wait()

    # :: Кадр 14
    cls()
    print("                   _________")
    print("              |   ____  \\")
    print("                  |  |1 __|  |")
    print("              |  |_|__|_/")
    print("                  |    __  \\")
    print("              |   |  \\  \\")
    print("                  |___|   \\__\\")
    wait()

    # :: Кадр 15
    cls()
    print("                  _________")
    print("               |   ____  \\")
    print("                 |  |1 __|  |")
    print("               |  |_|__|_/")
    print("                 |    __  \\")
    print("               |   |  \\  \\")
    print("                 |___|   \\__\\")
    wait()

    cls()
    print("                  _________")
    print("                 |   ____  \\")
    print("                 |  |1 __|  |")
    print("                 |  |_|__|_/")
    print("                 |    __  \\")
    print("                 |   |  \\  \\")
    print("                 |___|   \\__\\")

def wait():
    time.sleep(0.5)

def main():
    # Settings for windows
    if os.name == 'nt':
        os.system('title Rad-16py 0.0.1')
        os.system('color f1')
    print_an(level="")
     
    # Reboot screen
    cls()
    print("                    _________")
    print("                   |   ____  \\")
    print("                   |  |1 __|  |")
    print("                   |  |_|__| /")
    print("                   |    __  \\")
    print("                   |   |  \\  \\")
    print("                   |___|   \\__\\") 
    print("\n         *** Project in construction ***\n")
        
    while True:
        try:
            user_input = input("16-system> ").strip()
        except (EOFError, KeyboardInterrupt):
            user_input = ""
        
        cmd = user_input.lower()
        
        if cmd == "help":
            print("commands:")
            print("help - HELP")
            print("ver - VERsion of this system")
            print("cls - CLear Screen")
            print("exit - back in command prompt")
            print("reboot [parametrs] - reboot full or fast")
            print("info - iontamforin fo ytsyme negnie")
            print("shutdown - is just close this session")
            print("manager - is just a manager")
        elif cmd == "list":
            print("programs:")
            print("write - is just a write")
            print("Filmana - file manager")
        elif cmd == "ver":
            print("16-system 0.0.1 codename bomb")
        elif cmd == "cls":
            clear_screen()
        elif cmd == "reboot":
            try:
                subprocess.run(["start", "", ".r.bat"], shell=True)
            except Exception:
                pass
            break
        elif cmd == "exit":
            try:
                subprocess.run(["start", "", "cmd"], shell=True)
            except Exception:
                pass
            break
        elif cmd == "info":
            if os.name == 'nt':
                subprocess.run(["systeminfo"])
            else:
                print("sorry but this command launch command available only in windows")
        elif cmd == "sysver":
            print("class not registered")
        elif cmd == "manager":
            try:
                subprocess.run(["start", "", "manager.py"], shell=True)
            except Exception:
                pass
        elif cmd == "shutdown":
            break
        else:
            print(f'python: what? "{user_input}"?')

if __name__ == "__main__":
    main()