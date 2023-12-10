import os
import subprocess
dirname = os.path.dirname(__file__)
TestcasePath = os.path.join(dirname, 'Testcase')
ReportPath = os.path.join(dirname, 'Report')

def run_test_case(robot_script_path, report_folder, tags=None):
    # Get the current working directory (parent folder)
    parent_folder = os.getcwd()

    # Navigate to the Testcase folder
    testcase_folder = os.path.join(parent_folder, 'Testcase')
    os.chdir(testcase_folder)

    # Build the Robot Framework command with tags and report folder
    command_parts = ['robot', f'--outputdir {report_folder}']
    
    if tags:
        tags_string = ' '.join(tags)
        command_parts.append(f'--include {tags_string}')
    
    command_parts.append(robot_script_path)
    
    command_to_run = ' '.join(command_parts)
    
    # Run the Robot Framework script
    subprocess.run(command_to_run, shell=True)

    # Return to the original folder (parent folder)
    os.chdir(parent_folder)

if __name__ == "__main__":
    # Replace 'path/to/your/robot/script.robot' with the actual path to your Robot Framework script
    robot_script_path = TestcasePath
    
    # Replace 'path/to/your/report/folder' with the actual path where you want to generate the report
    report_folder = ReportPath
    
    # Specify the tags you want to include (e.g., ['one'])
    tags_to_include = ['two']
    
    # Run the test case with the specified Robot Framework script, report folder, and tags
    run_test_case(robot_script_path, report_folder, tags=tags_to_include)
