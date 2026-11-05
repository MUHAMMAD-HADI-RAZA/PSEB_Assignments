def is_adult(age: int) -> bool:
    if age < 0:
        raise ValueError("Age cannot be negative.")
    return age >= 18
