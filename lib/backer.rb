class Backer
    @@all = []

    def self.all
        @@all
    end

    attr_reader :name

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        probacs = ProjectBacker.all.select { |probac| probac.backer == self }
        probacs.map { |probac| probac.project }
    end
end