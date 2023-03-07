import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "admin-lte/plugins/bootstrap/js/bootstrap.bundle.min"
import "admin-lte/dist/js/adminlte"
