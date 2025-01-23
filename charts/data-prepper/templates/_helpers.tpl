{{/*
Expand the name of the chart.
*/}}
{{- define "data-prepper.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "data-prepper.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "data-prepper.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "data-prepper.labels" -}}
helm.sh/chart: {{ include "data-prepper.chart" . }}
{{ include "data-prepper.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "data-prepper.selectorLabels" -}}
app.kubernetes.io/name: {{ include "data-prepper.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "data-prepper.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "data-prepper.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Create the dockerRegistry prefix if defined
*/}}
{{- define "data-prepper.dockerRegistry" -}}
{{- if eq .Values.global.dockerRegistry "" -}}
  {{- .Values.global.dockerRegistry -}}
{{- else -}}
  {{- .Values.global.dockerRegistry | trimSuffix "/" | printf "%s/" -}}
{{- end -}}
{{- end -}}

{{/*
Utility to decide whether demoPipeline should be enabled.
If pipelineConfig.demoPipeline is true/false, return that value.
If pipelineConfig.demoPipeline is undefined, return true if no other pipeline is configured.
*/}}
{{- define "data-prepper.demoPipeline" -}}
{{- $demoPipeline := .Values.pipelineConfig.demoPipeline | toString -}}
{{- if eq $demoPipeline "true" -}}
{{ true }}
{{- else if eq $demoPipeline "false" -}}
{{ false }}
{{- else if or (not $demoPipeline) (eq $demoPipeline "") -}}
{{- if and (not .Values.pipelineConfig.enabled) (not .Values.pipelineConfig.existingSecret) -}}
{{ true }}
{{- else -}}
{{ false }}
{{- end -}}
{{- else -}}
{{ false }}
{{- end -}}
{{- end -}}