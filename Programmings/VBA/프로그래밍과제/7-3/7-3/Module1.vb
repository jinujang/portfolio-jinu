Module Module1

    Sub Main()
        Console.WriteLine("[장진우]")
        Console.WriteLine()

        Dim clsstudent(2) As StudentClass
        Dim tmpstudent As New StudentClass

        clsstudent(0) = New StudentClass("홍길동", 90, 85)
        clsstudent(1) = New StudentClass("김동수", 70, 80)
        clsstudent(2) = New StudentClass("이만수", 60, 60)

        Console.WriteLine()
        Console.WriteLine("학생 성적")
        Console.WriteLine()

        For Each tmpstudent In clsstudent
            tmpstudent.calc_average()
            tmpstudent.print_score()
        Next


    End Sub

End Module
