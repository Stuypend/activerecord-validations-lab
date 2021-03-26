class TitleValidator < ActiveModel::Validator

  def validate(record)
    unless record.title.match?("Won't Believe") || record.title.match?("Secret") || record.title.match?("Top") || record.title.match?("Guess")
      record.errors[:title] << "Not Good Enough"
    end
  end
end
