# Salam Commit Sheriff

A practical commit-message auditing CLI built with the **Salam Programming Language**.

It scores commit subjects, checks conventional commit prefixes, flags placeholders and suspicious credential-like text, and returns actionable advice.

Official Salam repository: https://github.com/SalamLang/Salam

## Run

With Salam 0.4.6 installed:

```
salam run main.salam
salam run main.salam "feat: add cache validation"
```

## Build

```
salam build main.salam --output=sheriff
```

## Expected output

A good subject receives PASS and a score near 100. Weak or risky subjects receive REVIEW/FAIL plus a recommendation.

## Structure

The application uses focused Salam modules for normalization, conventional-commit rules, security checks, quality checks, scoring, advice, formatting, models, and samples.

## Tests

Run `tests/smoke.ps1` on Windows after installing Salam. It builds the CLI and verifies both a passing and failing case.

## Docker

A Dockerfile is included for environments using the published Salam image.