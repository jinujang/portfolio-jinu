Public Class studentClass



    Public strStudentName As String
    Public intmathscore As Integer
    Public intengscore As Integer
    Public dblaveragescore As Double

    '접근 지정자 개체명 as 클래스명
    '클래스 내부에는 학생의 이름,수학,영어,평균 점수를 저장할 수 있는 멤버 변수를갖고 있으며
    '    ,평균 점수를 저장하기 위한 메서드와 점수 출력을 위한 메서드를 갖고 있다.

    Public Sub calc_average()
        dblaveragescore = (intmathscore + intengscore) / 2

    End Sub

    Public Sub print_score()
        Console.WriteLine("{0}학생", strStudentName)
        Console.WriteLine("수학점수 ={0}", intmathscore)
        Console.WriteLine("영어 점수 = {0}", intengscore)
        Console.WriteLine("평균 점수 = {0}", dblaveragescore)
        Console.WriteLine()
    End Sub

End Class
