# Program - MessageBoxTimeout

There is an undocumented function in the Windows API called `MessageBoxTimeoutA`. You can read more about it [here](http://pinvoke.net/default.aspx/user32.MessageBoxTimeout). It behaves similar to the regular `MessageBoxA` function, except it has a parameter that specifies a number of seconds to wait before automatically closing the message box.

In this assignment, you will call the `MessageBoxTimeoutA` function from within your assembly program. This is designed to practice calling functions with more than four parameters while adhering to the [Microsoft x64 ABI](https://learn.microsoft.com/en-us/cpp/build/x64-software-conventions?view=msvc-170) calling conventions.

## Requirements

Your program must display a Windows message box using the `MessageBoxTimeoutA` function. The message box must have the following properties:
- The main text of the message box should say, "This message will automatically close in 5 seconds."
- The title of the message box should have display your name.
- The message box should show an information icon on the left side of the dialog by using the `MB_ICONINFORMATION` type flag.
- The message box should be configured to automatically close in five seconds.

Here is an example screenshot of what the message box should look like:

TODO

## Notes

The parameters of the `MessageBoxTimeoutA` function are documented [here](http://pinvoke.net/default.aspx/user32.MessageBoxTimeout). Here is a summary of the parameters, in order:

- `hwnd` - handle to a parent window. You can set this to NULL (`0`).
- `text` - pointer to main text of the message box.
- `title` - pointer to title of the message box.
- `type` - an integer that stores characteristics about the message box, like what kind of buttons or icons to show. A list of options is documented [here](https://learn.microsoft.com/en-us/windows/win32/api/winuser/nf-winuser-messageboxa). Each option acts as a bitmask. The documentation page shows its equivalent hexadecimal value.
- `wLanguageId` - used when dealing with different languages. You can set this to `0` to use the system default.
- `milliseconds` - the number of milliseconds to wait before automatically closing the dialog. If set to `0`, the dialog does not automatically close.

You will need to adhere to the Microsoft x64 ABI calling conventions when calling the function. This includes performing the necessary steps in the function prologue for `_main` to reserve stack space for parameters and shadow space, as well as ensure 16-byte alignment. If you get "access violation" exceptions, it is a good indication that something did not get put in the right place.

## Submission

Submit a zip archive containing the following files:
- `program.asm`
- `program.sln`
- `program.vcxproj`
- `program.vcxproj.filters`

Do not include binary or intermediate output files from your project.
