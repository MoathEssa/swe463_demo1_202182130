# swe463_demo1_202182130

**SWE 463 - Mobile Application Development | Demo 1: Build Your First Flutter App**
Student: Moath Mahmoud Haimour (202182130)
Instructor: Hasan Al-Kaf

A Flutter application with a Home page and a Login page, navigable with
`Navigator.push()` and `Navigator.pop()`.

## Structure

| Path | Contents |
| --- | --- |
| `lib/main.dart` | Checkpoints 1-5 preserved as line comments, Checkpoint 6 active |
| `Screenshots/` | The nine required PNG evidence files |

## Checkpoints

| # | Focus | Screenshot |
| --- | --- | --- |
| 1 | `main()`, `runApp()`, `MaterialApp`, `Text` | `02_materialapp_text.png` |
| 2 | `Scaffold` with centered body text | `03_scaffold_text.png` |
| 3 | `AppBar`, `Drawer`, structured body | `04_appbar_drawer_body.png` |
| 4 | `MyApp` as a `StatelessWidget`, hot reload | `05_myapp_hot_reload.png` |
| 5 | Separate `HomePage` and `LoginPage` classes | `06_two_pages_home_only.png` |
| 6 | Navigation between the two pages | `07_navigation_home.png`, `08_navigation_login.png` |

## Screenshots

All nine required evidence files are in `Screenshots/`, captured on a physical
Infinix X6725 (Android 15) over `adb`:

| No. | File | Evidence |
| --- | --- | --- |
| 00 | `00_public_repository.png` | Public GitHub repository page |
| 01 | `01_environment_check.png` | `git`, `flutter`, `dart`, `flutter doctor -v`, `flutter devices` |
| 02 | `02_materialapp_text.png` | Checkpoint 1 - `MaterialApp` + `Text` |
| 03 | `03_scaffold_text.png` | Checkpoint 2 - centered text in a `Scaffold` |
| 04 | `04_appbar_drawer_body.png` | Checkpoint 3 - AppBar, open Drawer, body |
| 05 | `05_myapp_hot_reload.png` | Checkpoint 4 - text changed by hot reload |
| 06 | `06_two_pages_home_only.png` | Checkpoint 5 - only `HomePage` shown |
| 07 | `07_navigation_home.png` | Checkpoint 6 - Home page with the button |
| 08 | `08_navigation_login.png` | Checkpoint 6 - Login page after `Navigator.push()` |

Two extra supporting files are included:

- `04b_appbar_drawer_body_landscape.png` - the same Checkpoint 3 screen in
  landscape, where the AppBar, the open Drawer and the body text are all
  visible at once.
- `05a_myapp_is_running_before_reload.png` - the `MyApp is running` state
  *before* the hot reload, so the before/after pair proves the reload.

## Running

```
flutter pub get
flutter run
```

## Verification

```
dart format lib/main.dart   # 0 changed
flutter analyze             # No issues found!
```

## Note on Checkpoint 6

The final code follows the handout's **Final Quality Check** list: the Drawer
opens from `HomePage`, the Home tile closes it, `Open Login Page` pushes
`LoginPage`, and both `Back to Home` and the AppBar back arrow pop back to
`HomePage`. `Navigator.pop()` is used for the return path, matching the stated
learning outcome, rather than pushing a second `HomePage` onto the stack.

## AI Use

AI was used only to assist in the learning process. All implementation in this
project was done by me, and I can explain every active line in `lib/main.dart`.

