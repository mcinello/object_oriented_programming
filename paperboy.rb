class PaperBoy

  @name
  @experience
  @earnings #read-only

  def quota
    #calculate and return quota for next delivery
  end

  def deliver(start_address, end_address)
    #2 house numbers needed - assume start smaller number than end
    #return amount of money earned as a .to_f
    #update experience
  end

  def report
    #return string of performance
  end

end

#wage = $0.25 for ever paper delivered
# wage = $0.50 for every paper above quota
#if quota not met, lose $2

#min papers = 50
#quota 50% of experience + min papers
  #eg. if quota of 50 met, next time quota = 75
