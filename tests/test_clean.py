from src.clean import lowercase_string


def test_lowercase_string():
    assert lowercase_string("abc") == "abc"
    assert lowercase_string("ABC") == "abc"
    assert lowercase_string("Abc123") == "abc123"
