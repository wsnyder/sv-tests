# Copyright (C) 2020 The SymbiFlow Authors.
#
# Use of this source code is governed by a ISC-style
# license that can be found in the LICENSE file or at
# https://opensource.org/licenses/ISC

from BaseRunner import BaseRunner


class Surelog(BaseRunner):
    def __init__(self):
        super().__init__("Surelog", "surelog")

        self.url = "https://github.com/alainmarcel/Surelog"

    def prepare_run_cb(self, tmp_dir, params):
        self.cmd = [
            self.executable, '-nopython', '-nobuiltin', '-parse', '-noelab'
        ]

        for incdir in params['incdirs']:
            self.cmd.append('-I' + incdir)

        self.cmd += params['files']

    def is_success_returncode(self, rc, params):
        # 1 << 4 means semantic error, but we're only interested in
        # syntax and fatal errors.
        return rc & 0x03 == 0
