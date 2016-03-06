fid = fopen('filenames.txt', 'wt');
strings = char(classnames);

for class_idx = 1:length(strings(:, 1))
	fprintf(fid, strcat(strings(class_idx, :), '\n'));
end

fclose(fid);