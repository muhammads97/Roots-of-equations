function [] = write_file1(r, err, arr, eTime, name)
fileID = fopen('output1.txt', 'w');
fprintf(fileID, '\t\t%s\n\n', name);
fprintf(fileID, 'the steps are:\n');
for i = 1 : length(arr)
    for j = 1 : length(arr(i,:))
        fprintf(fileID, '\t%f', arr(i, j));
    end
    fprintf(fileID, '\n');
end
fprintf(fileID, '\n');
fprintf(fileID, 'The Root is: %f\n\n', r);
fprintf(fileID, 'Elapsed Time: %f\n\n', eTime);
fprintf(fileID, 'Error: %f', err);
fclose(fileID);
type output1.txt
end