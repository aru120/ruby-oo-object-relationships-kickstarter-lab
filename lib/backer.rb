class Backer

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all 
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def find
        ProjectBacker.all.select {|prj| prj.backer == self}
    end

    def backed_projects
        self.find.map {|my_project| my_project.project}
    end
    



end
