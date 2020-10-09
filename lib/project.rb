class Project

    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def find
        ProjectBacker.all.select {|prj| prj.project == self}
    end

    def backers
        self.find.map {|my_project| my_project.backer}
    end
    
   

end
