FROM ghcr.io/mermaid-js/mermaid-live-editor AS webbuilder


FROM vicanso/static 

COPY --from=webbuilder /usr/share/nginx/html /static

EXPOSE 3000 

CMD ["static-serve"]

ENTRYPOINT ["/entrypoint.sh"]