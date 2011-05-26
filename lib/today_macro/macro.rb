# #Copyright 2011 ThoughtWorks, Inc.  All rights reserved.

module TodayMacro
  class Macro
    def initialize(parameters, project, current_user)
      @project = project
    end
    
    def execute
      @project.format_date_with_project_date_format(Date.today)
    end
    
    def can_be_cached?
      false  # if appropriate, switch to true once you move your macro to production
    end
    
    def self.supports_project_group?
      false
    end
  end
end
