import os

def main():
    root_dir = "/home/users/wxie/visual_recognition/data/"
    set_name_list = [ "train", "test", "extra"]

    # For each train/test set
    for set_name in set_name_list:
        # Write to respective set file
        set_filename = root_dir + set_name + ".txt"
        f = open(set_filename, 'wt')

        set_dir = root_dir + set_name + "/"
        print("\n\nSet = {}".format(set_name))
        print("{}\n".format(set_dir))

        # Get a list of the sub-class dir
        class_list = os.listdir(set_dir)

        for cur_class in class_list:
            class_dir = set_dir + cur_class + "/"
            # Get image names for each class
            filename_list = os.listdir(class_dir)
            for filename in filename_list:
                f.write(class_dir + filename + " " + cur_class + "\n")


        # dir_path_list = [x[0] for x in os.walk(set_dir)]
        # dir_name_list = [x[1] for x in os.walk(set_dir)]
        # filename_list = [x[2] for x in os.walk(set_dir)]
        # print(dir_path_list)
        # print(dir_name_list)
        # print(filename_list)


        f.close()

if __name__ == "__main__":
    main()