# Original source: https://github.com/tzinfo/tzinfo-data/blob/master/Rakefile

class Scm
  def self.create(dir)
    if File.directory?(File.join(dir, '.git'))
      GitScm.new(dir)
    else
      NullScm.new(dir)
    end
  end

  def initialize(dir)
  end

  def sync(source_dir, target_dir)
    puts "Sync from #{source_dir} to #{target_dir}#{command ? " using #{command}" : ''}"
    sync_dirs(source_dir, target_dir)
  end

  protected

  def exec_scm(params)
    puts "#{command} #{params}"
    `#{command} #{params}`
    raise "#{command} exited with status #$?" if $? != 0  
  end

  private
  
  def sync_dirs(source_dir, target_dir)
    # Assumes a directory will never turn into a file and vice-versa
    # (files will all end in .rb, directories won't).

    source_entries, target_entries = [source_dir, target_dir].collect do |dir|
      Dir.entries(dir).delete_if {|entry| entry =~ /\A\./}.sort
    end
    
    until source_entries.empty? || target_entries.empty?          
      last_source = source_entries.last
      last_target = target_entries.last
    
      if last_source == last_target
        source_file = File.join(source_dir, last_source)
        target_file = File.join(target_dir, last_target)
      
        if File.directory?(source_file)
          sync_dirs(source_file, target_file)
        else
          FileUtils.cp(source_file, target_file)
        end     
      
        source_entries.pop
        target_entries.pop
      elsif source_entries.last < target_entries.last
        sync_only_in_target(target_dir, target_entries)
      else      
        sync_only_in_source(source_dir, target_dir, source_entries)
      end    
    end
    
    until target_entries.empty?
      sync_only_in_target(target_dir, target_entries)
    end
    
    until source_entries.empty?
      sync_only_in_source(source_dir, target_dir, source_entries)
    end
  end

  def sync_only_in_target(target_dir, target_entries)
    target_file = File.join(target_dir, target_entries.last)
    delete(target_file)
    target_entries.pop
  end

  def sync_only_in_source(source_dir, target_dir, source_entries)
    source_file = File.join(source_dir, source_entries.last)
    target_file = File.join(target_dir, source_entries.last)
        
    if File.directory?(source_file)
      Dir.mkdir(target_file)
      add(target_file)
      sync_dirs(source_file, target_file)
    else
      FileUtils.cp(source_file, target_file)
      add(target_file)
    end
    
    source_entries.pop
  end
end

class NullScm < Scm
  def command
    nil
  end
  
  def add(file)
  end
  
  def delete(file)
    puts "rm -rf \"#{file}\""
    FileUtils.rm_rf(file)
  end
end

class GitScm < Scm
  def command
    'git'
  end
  
  def add(file)
    unless File.directory?(file)
      exec_scm "add \"#{file}\""
    end
  end
  
  def delete(file)
    exec_scm "rm -rf \"#{file}\""
  end
end