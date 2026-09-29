# DevOps Git Workflow

## Workflow

1. Create a feature branch from main.
2. Make changes in the feature branch.
3. Test the changes locally.
4. Commit using Conventional Commits.
5. Push the feature branch.
6. Create a Pull Request.
7. Run CI checks.
8. Review the changes.
9. Merge into protected main.

## Branch Naming

Feature branches should follow:

feature/<description>

Example:

feature/day41-devops-git-workflow

## Commit Convention

Use Conventional Commits.

Examples:

feat: add deployment configuration
fix: correct deployment script
docs: update deployment documentation
ci: update pipeline
chore: update configuration
