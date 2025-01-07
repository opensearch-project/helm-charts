{{- if eq "true" (include "data-prepper.demoPipeline" .) }}
apiVersion: v1
kind: Secret
metadata:
  name: {{ include "data-prepper.fullname" . }}-demo-pipeline
  labels:
    {{- include "data-prepper.labels" . | nindent 4 }}
type: Opaque
stringData:
  pipelines.yaml: |
    simple-sample-pipeline:
      workers: 2      # the number of workers
      delay: 5000     # in milliseconds, how long workers wait between read attempts
      source:
        random: {}
      buffer:
        bounded_blocking:
          buffer_size: 1024     # max number of records the buffer accepts
          batch_size: 256       # max number of records the buffer drains after each read
      processor:
        - string_converter:
            upper_case: true
      sink:
        - stdout: {}
{{- end }}
