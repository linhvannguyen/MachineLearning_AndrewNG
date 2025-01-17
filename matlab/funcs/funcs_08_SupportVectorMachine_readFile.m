function file_contents = funcs_08_SupportVectorMachine_readFile(filename)
%READFILE reads a file and returns its entire contents 
%   file_contents = READFILE(filename) reads a file and returns its entire
%   contents in file_contents
%

    fid = fopen(filename);
    if fid
        file_contents = fscanf(fid, '%c', inf);
        fclose(fid);
    else
        file_contents = '';
        fprintf('Unable to open %s\n', filename);
    end
end
