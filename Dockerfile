FROM vicanso/static 

# 复制从 GitHub Actions 中提取的文件
COPY ./static-files /static

EXPOSE 3000 

CMD ["static-serve"]

ENTRYPOINT ["/entrypoint.sh"]