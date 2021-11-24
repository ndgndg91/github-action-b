# github-action-b

https://github.com/ndgndg91/githut-action-a
github-action-a repository 의 workflow 에서 Create a repository dispath event API 통해 발생한 dispatch-event 를 통해서 workflow 가 시작된다.
https://docs.github.com/en/rest/reference/repos#create-a-repository-dispatch-event

<pre>
on:
  # backend-tagging custom event type trigger
  repository_dispatch:
    types: [ backend-tagging ]
</pre>
