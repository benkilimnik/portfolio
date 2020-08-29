# Striver

## Steps to run:

1. In a shell

```bash
conda env create -f environment.yml
```

2. In a shell:

```sql
psql postgres
CREATE DATABASE striver;
\list
\connect striver
\q
```

3. In a shell

```python
python3
>> from striver import db
>> db.create_all()
>> exit()
```

4. In a shell

```bash
./run.sh
```
