FROM donovankellyazureadmin/kokoro:slim

# Optional: Add runtime-only tweaks here
WORKDIR /app

# Set environment variables
ENV PYTHONUNBUFFERED=1 \
    PYTHONPATH=/app:/app/api \
    PATH="/app/.venv/bin:$PATH" \
    DEVICE=cpu

EXPOSE 8880

CMD ["./entrypoint.sh"]
