function [X,y] = getData(filepath)
	preProcessData(filepath);

	data = csvread([filepath '.oct']);

	X = data(:, 1:30);
	y = data(:, 33);
end

function preProcessData(filepath)
	filestr = fileread(filepath);
	filestr = substr(filestr, 229);
	filestr = strrep(filestr, 'GP', '0');
	filestr = strrep(filestr, 'MS', '1');
	filestr = strrep(filestr, 'M', '0');
	filestr = strrep(filestr, 'F', '1');
	filestr = strrep(filestr, 'U', '0');
	filestr = strrep(filestr, 'R', '1');
	filestr = strrep(filestr, 'LE3', '0');
	filestr = strrep(filestr, 'GT3', '1');
	filestr = strrep(filestr, 'T', '0');
	filestr = strrep(filestr, 'A', '1');
	filestr = strrep(filestr, 'teacher', '0');
	filestr = strrep(filestr, 'health', '1');
	filestr = strrep(filestr, 'services', '2');
	filestr = strrep(filestr, 'at_home', '3');
	filestr = strrep(filestr, 'home', '0');
	filestr = strrep(filestr, 'reputation', '1');
	filestr = strrep(filestr, 'course', '3');
	filestr = strrep(filestr, 'mother', '0');
	filestr = strrep(filestr, 'father', '1');
	filestr = strrep(filestr, 'other', '2'); % Unnecessary
	filestr = strrep(filestr, 'no', '0');
	filestr = strrep(filestr, 'yes', '1');
	filestr = strrep(filestr, ';', ',');
	filestr = strrep(filestr, '"', '');
	disp(['filestr is' filepath '.oct']);
	octcsv = fopen([filepath '.oct'], 'w');
	fprintf(octcsv, '%s', filestr);
end