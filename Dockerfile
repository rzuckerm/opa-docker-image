FROM ajbetteridge/opa-1.1.1-build4308:opa-1.1.1-build4308

COPY run_opa /usr/local/bin/
RUN cd /usr/local/bin && \
    chmod +x run_opa
