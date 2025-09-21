# CRBasic Language Extension for Zed

A comprehensive Zed editor extension that provides advanced syntax highlighting and language support for CRBasic programming language used in Campbell Scientific dataloggers.

**NOTE:** This extension is still a work in progress and may contain bugs or missing features. Please report any issues you encounter.

## Features

- **Enhanced Syntax Highlighting**: Professional-grade highlighting that exceeds the popular [VS Code CRBasic extension](https://github.com/daiwalkr/cr-basic-ms-vscode)
- **Built-in Function Recognition**: 100+ CRBasic built-in functions properly highlighted
- **Smart Context-Aware Parsing**: Distinguishes between built-in functions and user-defined variables
- **Comprehensive File Support**: Supports most Campbell Scientific datalogger file extensions
- **Tree-sitter Grammar**: High-performance, accurate parsing using a custom Tree-sitter grammar
- **Language Intelligence**: Proper code structure recognition for better editor features

## Supported File Extensions

- Modern formats: `.cr300`, `.cr6`, `.cr1x`, `.cr9x`
- Legacy formats: `.cr1`, `.cr2`, `.cr3`, `.cr5`, `.cr8`, `.cr9`
- Generic formats: `.crb`, `.dld`
- Case-insensitive support for all extensions

## Language Features

### Program Structures

- `BeginProg` / `EndProg` blocks
- `Function` / `EndFunction` definitions
- `Sub` / `EndSub` procedures

### Control Flow

- `If` / `Then` / `Else` / `EndIf` statements
- `For` / `To` / `Next` loops with `Step` support
- `While` / `Wend` loops
- `Do` / `Loop` with `Until` and `While` conditions
- `Select` / `Case` / `EndSelect` statements

### Data Acquisition & Built-in Functions

- `Scan` / `NextScan` structures
- `SubScan` / `NextSubScan` blocks
- `SlowSequence` / `EndSequence` blocks
- `DataTable` / `EndTable` definitions
- **Measurement Functions**: `PanelTemp`, `Battery`, `VoltSE`, `VoltDiff`, `BrFull`, `Resistance`, `PeriodAvg`, `PulseCount`, `TCDiff`, `Therm107/108/109`, etc.
- **Data Processing**: `Sample`, `Average`, `Maximum`, `Minimum`, `StdDev`, `Totalize`, `Covariance`, `WindVector`, etc.
- **Communication**: `SerialOpen`, `SerialClose`, `TCPOpen`, `HTTPGet`, `ModbusMaster`, `SDI12Recorder`, `EmailSend`, etc.
- **Math Functions**: `Sin`, `Cos`, `Tan`, `Log`, `Sqr`, `ABS`, `Round`, `Randomize`, etc.
- **String Functions**: `Len`, `Mid`, `InStr`, `UpperCase`, `LowerCase`, `Trim`, `FormatFloat`, etc.

### Data Types

- `Boolean`, `Float`, `Double`, `Long`, `String`
- Specialized types: `FP2`, `IEEE4`, `IEEE8`, `UINT1`, `UINT2`, `UINT4`, `Bool8`, `NSEC`

### Comments and Preprocessor

- Single-line comments using `'` (apostrophe)
- Preprocessor directives: `#If`, `#IfDef`, `#UnDef`, `Include`

## Syntax Highlighting

The extension provides comprehensive syntax highlighting with the following categories:

- **🔵 Built-in Functions**: Campbell Scientific functions highlighted distinctly (e.g., `PanelTemp`, `Battery`, `Sample`)
- **🟢 User-defined Variables**: Custom variables and identifiers
- **🟡 Keywords**: Control flow, program structure, and language keywords
- **🟠 Data Types**: All CRBasic data types including specialized Campbell Scientific types
- **🔴 Operators**: Mathematical, logical, and assignment operators
- **⚫ Comments**: Single-line comments with proper styling
- **🟣 Strings & Numbers**: String literals and numeric values
- **🔷 Punctuation**: Brackets, parentheses, and delimiters with auto-closing support

## Installation

1. Clone this repository or download the extension files
2. Open Zed and navigate to the extension directory
3. Install the extension using Zed's extension manager or development tools
4. The extension will automatically be available for CRBasic files

> **Note**: This extension uses an external Tree-sitter grammar that will be automatically downloaded and compiled by Zed during installation.

## Development

This extension uses an external Tree-sitter grammar repository for parsing:

- **Extension Repository**: `https://github.com/philberndt/crbasic-zed-extension`
- **Grammar Repository**: `https://github.com/philberndt/tree-sitter-crbasic`

### Grammar Development

To contribute to the grammar:

1. Clone the grammar repository: `git clone https://github.com/philberndt/tree-sitter-crbasic`
2. Make changes to `grammar.js`
3. Test with: `tree-sitter test`
4. Generate parser: `tree-sitter generate`
5. Update the extension's `extension.toml` with the new commit hash

## Example

Here's what the enhanced syntax highlighting looks like:

```crbasic
'CR300 SDI-12 Precipitation Gauge Program
BeginProg
  'System measurements - built-in functions highlighted
  PanelTemp (PTemp, 60)
  Battery (Batt_Volt)

  'Data processing with built-in functions
  Sample (1, PTemp, FP2)
  Average (1, Batt_Volt, FP2, False)

  'Communication functions
  SDI12Recorder (VW_Freq(), SDI12Port, SDIAddr$, "M!", 1, 0, 0, 1)
EndProg
```

## Credits

- Inspired by the [VS Code CRBasic extension](https://github.com/daiwalkr/cr-basic-ms-vscode) by [@daiwalkr](https://github.com/daiwalkr)
- Enhanced with comprehensive built-in function recognition and Tree-sitter grammar
- Developed for the [Zed editor](https://zed.dev)
- CRBasic language by [Campbell Scientific](https://www.campbellsci.com)

## License

MIT License - see LICENSE file for details.
