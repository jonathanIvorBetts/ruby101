class Probe
  def deploy (deploy_time, return_time)
    # deploy the probe
    puts "Deploying, returning at: " #+ deploy_time
    puts deploy_time
      # and Time.parse(return_time)
      # #to_formatted_s(:long)
      #
    str_return_time = return_time

    puts str_return_time + "i am a string?"
      #puts return_time.iso8601
      #puts Date.iso8601(return_time)
      #puts Time.strftime(return_time)
  end
  def take_sample
    # do generic sampling
  end
end

class ProbeMineral < Probe
  def deploy (deploy_time)
    puts "preppy lil sample chamber iznit"
    super(deploy_time, deploy_time + 2 * 60 * 60) #2hrs
  end
  def take_sample
    # take mineral sample
  end
end

class ProbeAtmosphere < Probe
  def take_sample
    # take atmospheric sample
  end
end


ProbeMineral.new.deploy(Time.now)