class CategoryValidator < ActiveModel::Validator
    def validate(record)
      record.category and unless record.category.match?(/Fiction/)
        record.errors[:name] << "bad category!"
      end
    end
  end
  