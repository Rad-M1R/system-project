import os
import sys

def main():
    os.system("title Basic manager of system")
    os.system("color 12")
    
    while True:
        os.system("cls")
        print()
        print("    1. FILmana")
        print("    2. write")
        print("    3. exit")
        print("    4. shutdown")
        print()
        
        try:
            app_choice = input("Select App [1-4]: ")
        except EOFError:
            break
        
        if app_choice == "1":
            os.system('start "" "filmana.bat"')
            continue
        elif app_choice == "2":
            print("write not found")
            os.system("pause")
            continue
        elif app_choice == "3":
            os.system('start "" "system-16.bat"')
            continue
        elif app_choice == "4":
            break
        else:
            print("Invalid choice!")
            os.system("timeout /t 1 >nul")
            continue

if __name__ == "__main__":
    main()