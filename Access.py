import subprocess

public_key = '58m6kWLkFLw0srrHpI1s_5iNeoD3sGccNsFExGu0zig='

def run_robot_command(tag):
    command = f"pabot -d .\\output\\Testcase  -i {tag} ."
    
    try:
        # Run the command
        subprocess.run(command, shell=True, check=True)
    except subprocess.CalledProcessError as e:
        print(f"Error: {e}")
    except Exception as e:
        print(f"An unexpected error occurred: {e}")

# Specify the tag
tag = "TC02"


# def install_requirements(requirements_file):
#     try:
#         # Use subprocess to run the pip install command with the requirements file
#         subprocess.check_call(["pip", "install", "-r", requirements_file])
#         print(f"Successfully installed dependencies from {requirements_file}")
#     except subprocess.CalledProcessError as e:
#         print(f"Failed to install dependencies from {requirements_file}. Error: {e}")


# # Example: Install dependencies from a requirements.txt file
# install_requirements("requirements.txt")



run_robot_command(tag)
