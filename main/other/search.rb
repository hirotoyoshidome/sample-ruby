#!C:/Ruby25-x64/bin/ruby.exe
#! encoding : CP932

# �f�B���N�g���̐ݒ�
dir = 'C:'

# �f�B���N�g���̓ǂݍ���
dirs = Dir.open(dir).to_a

# �e�t�@�C���̓ǂݍ���
dirs.each do |d|
	unless d == '.' || d == '..'  # �悭�킩��񂪂���͓ǂ߂Ȃ����珜�O
		# �f�B���N�g���̃p�X�̐ݒ�
		directory = dir + '/' + d
		filenames = Dir.open(directory).to_a
		filenames.each do |filename|
			unless filename == '.' || filename == '..' # �悭�킩��񂪂���͓ǂ߂Ȃ����珜�O
				# �t�@�C���̃p�X�̐ݒ�
				path = directory + '/' + filename
				#puts File.basename(path) #�t�@�C�����o��
				
				file = File.open(path)
				
				# �e�t�@�C���ɑ΂��鏈��
				#puts file.read
				
				#�e�s�ɑ΂��鏈��
				file.each_line do |line|
					# �t���p�X�̍ŏ��̕����폜����
					if line.include?('localhost') then
						unless line.include?('######') then
							if line.include?('') then
							end
						end
					end
				end
				
				#�I��
				file.close
			end
		end
	end
end
