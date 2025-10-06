Public Class StudentClass



    Public strstudentName As String
    Public intMathScore As Integer
    Public intEngScore As Integer
    Public dblAverageScore As Double

    Public Sub New()
        strstudentName = ""
        intMathScore = 0
        intEngScore = 0

    End Sub

    Public Sub New(ByVal strName As String, ByVal intMscore As Integer, ByVal intEscore As Integer)
        '클래스의 생성자를 만들기 위해서 클래스 내부에 sub new라는 이름의 멤버 메서드를 정의해준다

        strstudentName = strName
        intMathScore = intMscore
        intEngScore = intEngScore
    End Sub

    Public Sub calc_average()
        dblAverageScore = (intMathScore + intEngScore) / 2

    End Sub

    Public Sub print_score()
        Console.WriteLine("{0}학생", strstudentName)
        Console.WriteLine("수학점수={0}", intMathScore)
        Console.WriteLine("영어 점수 ={0}", intEngScore)
        Console.WriteLine("평균 점수={0}", dblAverageScore)
        Console.WriteLine()
    End Sub
End Class