import subprocess

def run_robot_command(tag):
    command = f"robot -d .\\output\\ --listener allure_robotframework -i {tag} ."
    
    try:
        # Run the command
        subprocess.run(command, shell=True, check=True)
    except subprocess.CalledProcessError as e:
        print(f"Error: {e}")
    except Exception as e:
        print(f"An unexpected error occurred: {e}")

# Specify the tag
tag = "two"

# Call the function to execute the command with the specified tag
run_robot_command(tag)
