class Project
    @@all = []

    def self.all
        @@all
    end

    attr_reader :title

    def initialize(title)
        @title = title
        save
    end

    def save
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers 
        probacs = ProjectBacker.all.select { |probac| probac.project == self }
        probacs.map { |probac| probac.backer }
    end
end