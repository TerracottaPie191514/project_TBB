import os
import shutil
import subprocess

folder_x = "/home/user/project/Data/Full/trees_result/"
folder_y1 = "/home/user/project/Data/Full/sequences/fa_files/1"
folder_y2 = "/home/user/project/Data/Full/sequences/fa_files/2"
folder_z = "/home/user/project/Data/Full/seqs_results/"

def take_first_part_name(file):
    split = file.split("_")
    return split[0]

def take_name_pre_extension(file):
    split = file.split(".")
    return split[0]

folder_y1_files = os.listdir(folder_y1)
folder_y2_files = os.listdir(folder_y2)
folder_z_files = os.listdir(folder_z)

for file in os.listdir(folder_x):
    print(file)
    dir_name = file[:-3]
    first_part_name = take_first_part_name(file)
    corresponding_sequence = [i for i in folder_y1_files if first_part_name in i]
    folder_y = folder_y1
    if corresponding_sequence == []:
        corresponding_sequence = [i for i in folder_y2_files if first_part_name in i]
        folder_y = folder_y2
    pre_extension = take_name_pre_extension(file)
    corresponding_header = [i for i in folder_z_files if pre_extension in i] 
    print(corresponding_header[0])
    if not os.path.exists("MCMCTree_runs/" + dir_name):
        os.makedirs("MCMCTree_runs/" + dir_name)
    nw_source = str(folder_x + "/" +  file)
    nw_target = r'./MCMCTree_runs/' + dir_name + "/" + file
    shutil.copyfile(nw_source, nw_target)
    fa_source = str(folder_y + "/" + corresponding_sequence[0])
    fa_target = r'./MCMCTree_runs/' + dir_name + "/" + corresponding_sequence[0]
    shutil.copyfile(fa_source, fa_target)
    header_source = str(folder_z + "/" +  corresponding_header[0])
    header_target = r'./MCMCTree_runs/' + dir_name + "/" + corresponding_header[0]
    shutil.copyfile(header_source, header_target)    
    wag_source = r'./wag.dat'
    wag_target = r'./MCMCTree_runs/' + dir_name + "/wag.dat"
    shutil.copyfile(wag_source, wag_target)
    prep_source = r'./prep.sh'
    prep_target = r'./MCMCTree_runs/' + dir_name + "/prep.sh"
    shutil.copyfile(prep_source, prep_target)
    run_source = r'./run_MCMCTree.sh'
    run_target = r'./MCMCTree_runs/' + dir_name + "/run_MCMCTree.sh"
    shutil.copyfile(run_source, run_target)
    ctl_source = r'./MCMCTree.ctl'
    ctl_target = r'./MCMCTree_runs/' + dir_name + "/MCMCTree.ctl"
    shutil.copyfile(ctl_source, ctl_target)
#     process = subprocess.Popen(["bash", 'prep.sh', file, corresponding_sequence[0], corresponding_header[0]],
#                          stdout=subprocess.PIPE, 
#                          stderr=subprocess.PIPE,
#                          cwd = r'/home/user/project/Scripts/MCMCTree_runs/' + dir_name + "/")
#     stdout, stderr = process.communicate()
#     stdout, stderr    
#     process = subprocess.Popen(["bash",'run_MCMCTree.sh'],
#                          stdout=subprocess.PIPE, 
#                          stderr=subprocess.PIPE,
#                          cwd = r'/home/user/project/Scripts/MCMCTree_runs/' + dir_name + "/")
