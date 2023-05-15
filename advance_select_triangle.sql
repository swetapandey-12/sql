select 
      case 
        when A+B <=C or B+C <=A or C+A <=B then 'Not A Triangle'
        when A=B or B=C then 'Isosceles'
        when A=B or B=C or A=C then 'Equilateral'
        when A<>B and B<>C then 'Scalene'
    end tuple
from triangles;
    
