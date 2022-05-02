job_avalon_01:
  schedule.present:
    - function: state.sls
    - job_args:
      - state.apply saltenv=base pillarenv=base
    - job_kwargs:
        test: True
    - when:
        - Monday 1:00am
        - Tuesday 1:00am
        - Wednesday 1:00am
        - Thursday 1:00am
        - Friday 1:00am
        - Saturday 1:00am 
        - Sunday 1:00am