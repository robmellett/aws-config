## Set AWS Keys on Github

A little helper script to quickly set my AWS Keys on a GH repository when running Serverless applications.

Install the [Github command line tool](https://formulae.brew.sh/formula/gh).

```shell
brew install gh
```

You can add this as a shell alias in the following way.

```shell
# ~/.zshrc

alias gh-aws-secrets="sh ~/Code/aws-config/set-aws-secrets.sh"
```

In a new project you, you can run the following command:

```shell
gh-aws-secrets

✓ Set Actions secret AWS_ACCESS_KEY_ID for robmellett/<project>
✓ Set Actions secret AWS_SECRET_ACCESS_KEY for robmellett/<project>
✓ Set Actions secret AWS_REGION for robmellett/<project>
```