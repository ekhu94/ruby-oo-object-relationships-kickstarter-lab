class ProjectBacker
    @@all = []

    def self.all
        @@all
    end

    attr_reader :project, :backer

    def initialize(project, backer)
        @project, @backer = project, backer
        save
    end

    def save
        @@all << self
    end
end