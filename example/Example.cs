using System;

public class Example
{
    public static string Hello(string yourName) =>
        $"Hello {yourName}, I'm a message from C# and this message generated at {DateTime.Now}";

    public static int Sum(int a, int b) => a + b;                           
}