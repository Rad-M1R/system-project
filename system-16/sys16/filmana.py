import os
import sys

def main():
    os.system("title FilMAna")
    os.system("color 13")

    while True:
        os.system("cls")
        print("               FilMAna - file manager of Rad-16py")

        while True:
            try:
                fm_in = input(f"{os.getcwd()}> ")
            except (KeyboardInterrupt, EOFError):
                print()
                sys.exit(0)

            fm_in = fm_in.strip()
            if not fm_in:
                continue

            # Split input into command and arguments
            parts = fm_in.split(None, 1)
            cmd_name = parts[0].lower() if parts else ""
            cmd_arg = parts[1] if len(parts) > 1 else ""

            if cmd_name == "exit":
                return

            if cmd_name == "help":
                print(" Commands: ")
                print(" cd [dir]   - change directory  | type [file] - view file")
                print(" make [file]- create text file  | del [file]  - delete file")
                print(" mkdir [dir]- create directory  | rmdir [dir] - remove folder")
                print(" tree       - show folder tree  | exit        - back to manager")
                print()
                continue

            if cmd_name == "dir":
                print()
                os.system("dir")
                print()
                continue

            if cmd_name == "cd":
                if not cmd_arg:
                    print("Error: Specify directory path.")
                else:
                    try:
                        os.chdir(cmd_arg)
                    except OSError:
                        print("Directory not found!")
                break

            if cmd_name == "mkdir":
                if not cmd_arg:
                    print("Error: Specify folder name.")
                else:
                    try:
                        os.makedirs(cmd_arg)
                        print("Folder created.")
                    except OSError:
                        print("Error creating folder!")
                continue

            if cmd_name == "rmdir":
                if not cmd_arg:
                    print("Error: Specify folder name.")
                else:
                    if os.path.exists(cmd_arg):
                        try:
                            import shutil
                            shutil.rmtree(cmd_arg)
                            print("Folder deleted.")
                            break
                        except OSError:
                            print("Error deleting folder!")
                    else:
                        print("Folder not found!")
                continue

            if cmd_name == "tree":
                print()
                print("--- Folder Tree Structure ---")
                try:
                    if cmd_arg:
                        os.system(f'tree /f "{cmd_arg}"')
                    else:
                        os.system("tree")
                except Exception:
                    print("Error executing tree!")
                print("-----------------------------")
                print()
                continue

            if cmd_name == "type":
                if not cmd_arg:
                    print("Error: Specify file name.")
                else:
                    if os.path.isfile(cmd_arg):
                        print()
                        print(f"--- Content of {cmd_arg} ---")
                        try:
                            with open(cmd_arg, 'r', encoding='utf-8') as f:
                                content = f.read()
                                print(content)
                        except UnicodeDecodeError:
                            with open(cmd_arg, 'rb') as f:
                                print(f.read().decode('utf-8', errors='replace'))
                        print("-----------------------------")
                        print()
                    else:
                        print("File not found!")
                continue

            if cmd_name == "make":
                if not cmd_arg:
                    print("Error: Specify file name.")
                else:
                    print("Enter text (Type 'END' on a new line and press Enter to save):")
                    lines = []
                    while True:
                        try:
                            line = input()
                        except (KeyboardInterrupt, EOFError):
                            print()
                            break
                        if line.upper() == "END":
                            break
                        lines.append(line)
                    
                    try:
                        with open(cmd_arg, 'w', encoding='utf-8') as f:
                            f.write('\n'.join(lines))
                        print("File saved.")
                        break
                    except OSError:
                        print("Error creating file!")
                continue

            if cmd_name == "del":
                if not cmd_arg:
                    print("Error: Specify file name.")
                else:
                    if os.path.isfile(cmd_arg):
                        try:
                            os.remove(cmd_arg)
                            print("File deleted.")
                            break
                        except OSError:
                            print("Error deleting file!")
                    else:
                        print("File not found!")
                continue

            print(f'Unknown FM command: "{cmd_name}"')
            continue

if __name__ == "__main__":
    main()