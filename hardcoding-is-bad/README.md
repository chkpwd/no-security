
# Hardcoding secrets is bad
## Find examples of how to avoid hardcoding secrets in your code

Here are some **bad examples** of how to  **expose secrets**.

These practices are to demonstrate how careless use of version control can lead to security breaches.

>Feel free to laugh, but remember to never actually do this in your own code!

---

### **Bad Example 1: Committing Hardcoded API Keys**

```bash
$ echo "Your API Key: OMG_THIS_PASSWORD_BETTER_NOT_GET_LEAKED" > api_keys.txt
$ git add api_keys.txt
$ git commit -m "Added API keys for external service"
```

### **Bad Example 2: Committing hardcoded API Keys in XML Documents**
```bash
$ echo "<api_key>OMG_THIS_PASSWORD_INSIDE_A_XML_DOCUMENT_BETTER_NOT_GET_LEAKED</api_key>" > api_keys.xml
$ git add api_keys.xml
$ git commit -m "Added API keys for external service"
```

### **Bad Example 3: Committing hardcoded API Keys in JSON Documents**
```bash
$ echo "{ \"api_key\": \"OMG_THIS_PASSWORD_INSIDE_A_JSON_DOCUMENT_BETTER_NOT_GET_LEAKED\" }" > api_keys.json
$ git add api_keys.json
$ git commit -m "Added API keys for external service"
```

### **Bad Example 4: Committing hardcoded API Keys in YAML Documents**
```bash
$ echo "api_key: OMG_THIS_PASSWORD_INSIDE_A_YAML_DOCUMENT_BETTER_NOT_GET_LEAKED" > api_keys.yaml
$ git add api_keys.yaml
$ git commit -m "Added API keys for external service"
```

### **Bad Example 5: Committing hardcoded API Keys in Shell Scripts**
```bash
$ echo "API_KEY=OMG_THIS_PASSWORD_INSIDE_A_SHELL_SCRIPT_BETTER_NOT_GET_LEAKED" > api_keys.sh
$ git add api_keys.sh
$ git commit -m "Added API keys for external service"
```

### **Bad Example 6: Committing hardcoded API Keys in Python Scripts**
```bash
$ echo "APIKEY = 'OMG_THIS_PASSWORD_INSIDE_A_PYTHON_SCRIPT_BETTER_NOT_GET_LEAKED'" > api_keys.py
$ git add api_keys.py
$ git commit -m "Added API keys for external service"
```

### **Bad Example 7: Committing hardcoded API Keys in Java Code**
```bash
$ echo "public static final String APIKEY = \"OMG_THIS_PASSWORD_INSIDE_JAVA_CODE_BETTER_NOT_GET_LEAKED\";" > ApiKeys.java
$ git add ApiKeys.java
$ git commit -m "Added API keys for external service"
```

### **Bad Example 8: Committing hardcoded API Keys in PHP Code**
```bash
$ echo "<?
define('API_KEY', 'OMG_THIS_PASSWORD_INSIDE_PHP_CODE_BETTER_NOT_GET_LEAKED');
?>" > api_keys.php
$ git add api_keys.php
$ git commit -m "Added API keys for external service"
```

### **Bad Example 9: Committing hardcoded API Keys in HTML Code**
```bash
$ echo "<script
    var API_KEY
    API_KEY = 'OMG_THIS_PASSWORD_INSIDE_HTML_CODE_BETTER_NOT_GET_LEAKED';
</script>" > api_keys.html
$ git add api_keys.html
$ git commit -m "Added API keys for external service"
```

### **Bad Example 10: Committing hardcoded API Keys in Markdown Documents**
```bash
$ echo "API_KEY: OMG_THIS_PASSWORD_INSIDE_MARKDOWN_DOCUMENT_BETTER_NOT_GET_LEAKED" > api_keys.md
$ git add api_keys.md
$ git commit -m "Added API keys for external service"
```

---

### **How to Avoid Hardcoding Secrets**

1. **Use Environment Variables**: Store sensitive information in environment variables and access them in your code.
2. **Use Configuration Files**: Store secrets in configuration files that are not tracked by version control.
3. **Use Secret Management Tools**: Utilize tools like AWS Secrets Manager, HashiCorp Vault, or Azure Key Vault to securely store and manage secrets.
4. **Use Encryption**: Encrypt sensitive information before storing it in your code or configuration files.
5. **Use Secure Key Stores**: Store secrets in secure key stores that provide access control and auditing capabilities.

Remember, hardcoding secrets in your code is a bad practice that can lead to security vulnerabilities. Always follow best practices for managing sensitive information and keep your code secure.

---

### **Disclaimer**

This repository is meant for educational purposes only. The examples provided are intentionally insecure to demonstrate bad practices. Do not use these examples in production code or store sensitive information in this repository.

---

### **Contributing**

If you have more bad examples of hardcoding secrets or better practices for managing sensitive information, feel free to contribute to this repository. Let's learn from each other and improve our security practices together!
