FROM nginx:alpine

# Copy sources
COPY [ \
  "node_modules/rune-ui/index.html", \
  "node_modules/rune-ui/styles.css", \
  "node_modules/rune-ui/dist/rune.js", \
  "node_modules/rune-ui-resources/dist/", \
  "/usr/share/nginx/html/" \
]

# Copy NPM dependencies
RUN [ "mkdir", "/usr/share/nginx/html/node_modules/" ]
COPY [ \
  "node_modules/", \
  "/usr/share/nginx/html/node_modules/" \
]
