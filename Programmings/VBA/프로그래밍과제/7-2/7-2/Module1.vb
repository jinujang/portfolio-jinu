Module Module1

    Sub Main()

        Console.WriteLine("[장진우]")
        Console.WriteLine()

        Dim clsStudent(2) As studentClass
        Dim intcount As Integer

        For intcount = 0 To 2
            clsStudent(intcount) = New studentClass()

        Next

        clsStudent(0).strStudentName = "홍길동"
        clsStudent(0).intmathscore = 90
        clsStudent(0).intengscore = 85
        clsStudent(1).strStudentName = "김동수"
        clsStudent(1).intmathscore = 70
        clsStudent(1).intengscore = 80
        clsStudent(2).strStudentName = "이만수"
        clsStudent(2).intmathscore = 60
        clsStudent(2).intengscore = 60

        Console.WriteLine()
        Console.WriteLine("학생 성적")
        Console.WriteLine()

        For Each tmpstudent In clsStudent
            tmpstudent.calc_average()
            tmpstudent.print_score()

        Next

    End Sub

End Module
