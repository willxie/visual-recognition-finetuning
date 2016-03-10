load filenames.mat;
whos;
% 
% % Train
% fprintf('Copying train data...\n');
% output_dir = '~/visual_recognition/data/train/';
% ImNames = trainImNames;
% for class_idx = 1:length(ImNames(:, 1)) % Per class
%     strings = char(ImNames(class_idx, :));
%     % Make dir for class
%     class_dir = strcat(output_dir, int2str(class_idx));
%     mkdir(class_dir);
%     for file_idx = 1:length(strings(:, 1))
%         copyfile(strcat('/var/local/wxie', strings(file_idx, :)), class_dir);
%     end
% end

% % Test
% fprintf('Copying test data...\n');
% output_dir = '~/visual_recognition/data/test/';
% ImNames = test1ImNames;
% for class_idx = 1:length(ImNames(:, 1)) % Per class
%     strings = char(ImNames(class_idx, :));
%     % Make dir for class
%     class_dir = strcat(output_dir, int2str(class_idx));
%     mkdir(class_dir);
%     for file_idx = 1:length(strings(:, 1))
%         copyfile(strcat('/var/local/wxie', strings(file_idx, :)), class_dir);
%     end
% end

% % Extra
% fprintf('Copying extra data...\n');
% output_dir = '~/visual_recognition/data/extra/';
% ImNames = extraTrainImNames;
% for class_idx = 1:length(ImNames(:, 1)) % Per class
%     strings = char(ImNames(class_idx, :));
%     % Make dir for class
%     class_dir = strcat(output_dir, int2str(class_idx));
%     mkdir(class_dir);
%     for file_idx = 1:length(strings(:, 1))
%         copyfile(strcat('/var/local/wxie', strings(file_idx, :)), class_dir);
%     end
% end

% Test
fprintf('Copying test2 data...\n');
output_dir = '~/visual_recognition/data/test2/';
ImNames = test2ImNames;
for class_idx = 1:length(ImNames(:, 1)) % Per class
    strings = char(ImNames(class_idx, :));
    % Make dir for class
    class_dir = strcat(output_dir, int2str(class_idx));
    mkdir(class_dir);
    for file_idx = 1:length(strings(:, 1))
        copyfile(strcat('/var/local/wxie', strings(file_idx, :)), class_dir);
    end
end