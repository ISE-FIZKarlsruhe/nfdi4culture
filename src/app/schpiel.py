from fastapi.responses import HTMLResponse
from fastapi import Request, BackgroundTasks
from .config import SCHPIEL_PATH
from .main import app, templates
from markdown_it import MarkdownIt
from markupsafe import Markup
import os


def find_md_file(pagename):
    for dirpath, dirnames, filenames in os.walk(SCHPIEL_PATH):
        for filename in filenames:
            filepath = os.path.join(dirpath, filename)
            yield filepath


@app.get(
    "/schpiel/{pagename:path}", response_class=HTMLResponse, include_in_schema=False
)
def schpiel(request: Request, background_tasks: BackgroundTasks, pagename: str):
    for filepath in find_md_file(pagename):
        filepath_ = filepath.replace(SCHPIEL_PATH, "").strip("/")
        if filepath_ == pagename:
            md_content = open(filepath).read()
            md = MarkdownIt()
            contents = md.render(md_content)
            return templates.TemplateResponse(
                "schpiel.html", {"request": request, "contents": Markup(contents)}
            )