function [] = write_file1(file,r, err, arr, eTime, name , column_names)
    fileID = fopen(file, 'w');
    fprintf(fileID, '\t\t%s\n\n', name);
    fprintf(fileID, 'the steps are:\n');
    n = length(column_names);
    
    if ~strcmp(name, 'birgeVieta')
        for i = 1 : n
            fprintf(fileID, '\t%s\t', char(column_names(i)));
        end
        fprintf(fileID, '\n');
        for i = 1 : size(arr,1)
            for j = 1 : size(arr,2)
                fprintf(fileID, '\t%f', arr(i, j));
            end
            fprintf(fileID, '\n');
        end
    else
        for i = 1 : size(arr,1)
            fprintf(fileID, strcat('root' , num2str(i) , '\n'));  
            for j = 1 : size(arr,2)
                 fprintf(fileID, strcat('iteration' , num2str(j) , '\n'));
                    fprintf(fileID,'\ti\t\t\ta\t\t\tb\t\t\tc \n');
                for k = 1 : size(arr,3)
                    for m = 1 : size(arr,4)
                        fprintf(fileID,'\t%f' , arr(i,j,k,m));
                    end
                        fprintf(fileID,'\n');
                end
                
            end
            
        end
    end
    fprintf(fileID, '\n');
    fprintf(fileID, 'The Root is: %f\n\n', r);
    fprintf(fileID, 'Elapsed Time: %f\n\n', eTime);
    fprintf(fileID, 'Error: %f', err);
    fclose(fileID);
    type output1.txt
end