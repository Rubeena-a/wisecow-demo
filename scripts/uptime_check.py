#!/usr/bin/env python3  # Use Python 3 interpreter
import requests         # Import requests library for HTTP requests
import sys              # Import sys for exit codes
from time import perf_counter  # Import perf_counter for precise timing

URL = "http://wisecow.local/"  # URL to check
TIMEOUT = 5                    # HTTP request timeout in seconds
MAX_RESPONSE_MS = 1000         # Maximum allowed response time in ms

def check(url):
    try:
        start = perf_counter()             # Start timer
        r = requests.get(url, timeout=TIMEOUT)  # Send GET request
        elapsed_ms = (perf_counter() - start) * 1000  # Calculate elapsed time in ms
        status = r.status_code             # Get HTTP status code
        print(f"Status: {status}, Time: {elapsed_ms:.1f} ms")  # Print status and time
        if status != 200 or elapsed_ms > MAX_RESPONSE_MS:       # Check for error or slow response
            print("ALERT: Service down or slow")                # Print alert
            return 2                                            # Return alert exit code
        return 0                                                # Return OK exit code
    except Exception as e:
        print("ERROR: ", e)             # Print error message
        return 2                        # Return alert exit code

if __name__ == "__main__":
    sys.exit(check(URL))                # Run check and exit with its code
