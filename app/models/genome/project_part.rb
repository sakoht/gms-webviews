class Genome::ProjectPart < ActiveRecord::Base
  self.table_name = 'subject.project_part'
  belongs_to :project
  self.primary_key = :id
end
