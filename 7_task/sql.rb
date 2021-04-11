# Запросы написаны, при условии использования библиотеки Active Record

# посчитайте количество студентов с родителями
Student.where.not(parent_id: nil).count

# посчитайте количество студентов с родителями при том что имя родителя Марина
Student.joins(:parents).where(parents: { name: 'Марина' }).count

# посчитайте количество студентов без родителя
Student.where(parent_id: nil).count
