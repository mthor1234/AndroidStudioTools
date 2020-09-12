import java.io.IOException

/**
 * Copyright Tandem Diabetes Care, Inc. 2020.  All rights reserved.
 * GetFileHistory.kt
 * @summary:
 * @author: Mitch Thornton Sep 11, 2020
 */

//Runtime.getRuntime().exec("powershell.exe -File d:\\my-script.ps1")
//Runtime.getRuntime().exec("ls")

//runCommand("ls")

@Throws(IOException::class)
fun runCommand(command: String?): Int {
    var returnValue = -1
    try {
        val process = Runtime.getRuntime().exec(command)
        process.waitFor()
        returnValue = process.exitValue()
    } catch (e: InterruptedException) {
        e.printStackTrace()
    }
    return returnValue
}