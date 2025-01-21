{% snapshot customer_snapshot %}
  {{
    config(
      target_schema='ANALYTICS',
      unique_key='customer_id',
      strategy='timestamp',
      updated_at='CREATED_AT'
    )
  }}

  select * from RAW.ANALYTICS.sample_customers
{% endsnapshot %}
