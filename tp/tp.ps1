$sentences = @(
    "I am still typing this to finish explaining the idea.",
    "Continuing to write because the thought is not complete yet.",
    "Adding another line to make the explanation clearer.",
    "Still typing, adjusting the wording slightly.",
    "Writing one more sentence to keep the flow natural."
)

$start = Get-Date
$duration = New-TimeSpan -Hours 6
$i = 0

Add-Type -AssemblyName System.Windows.Forms

Start-Sleep -Seconds 5

while ((Get-Date) - $start -lt $duration) {
    [System.Windows.Forms.SendKeys]::SendWait($sentences[$i])
    [System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
    Start-Sleep -Seconds (2 + ($i % 3))
    $i = ($i + 1) % $sentences.Count
}
