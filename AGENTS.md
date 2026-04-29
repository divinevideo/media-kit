# Repository Guidelines

## Project Structure & Module Organization
- Flutter packages live in the workspace directories such as `media_kit/`, `media_kit_video/`, `video_player_media_kit/`, and `media_kit_test/`.
- Workspace coordination lives at the repo root in `pubspec.yaml` and `melos.yaml`.
- Keep changes scoped to the relevant package or platform target instead of spreading unrelated edits across the whole workspace.

## Build, Test, and Development Commands
- `flutter pub get`: install dependencies for the current package.
- `flutter analyze`: run static analysis.
- `flutter test`: run tests for the relevant package.
- Use the existing workspace structure and package READMEs when changing public APIs or integration behavior.

## Coding Style & Naming Conventions
- Use idiomatic Dart and Flutter patterns with focused package boundaries.
- Prefer small package-specific changes over broad multi-package churn unless the change truly spans the workspace.
- Keep PRs tightly scoped. Do not mix unrelated cleanup, formatting churn, or speculative refactors into the same change.
- Temporary or transitional code must include `TODO(#issue):` with the tracking issue for removal.

## Pull Request Guardrails
- PR titles must use Conventional Commit format: `type(scope): summary` or `type: summary`.
- Set the correct PR title when opening the PR. Do not rely on fixing it afterward.
- If a PR title changes after opening, verify that the semantic PR title check reruns successfully.
- PR descriptions must include a short summary, motivation, linked issue, and manual test plan.
- Changes to package APIs, playback behavior, or platform integration should include representative notes or migration guidance when helpful.

## Sensitive Information
- Do not commit secrets, private media, or sensitive operational details.
- Public issues, PRs, branch names, screenshots, and descriptions must not mention corporate partners, customers, brands, campaign names, or other sensitive external identities unless a maintainer explicitly approves it. Use generic descriptors instead.
