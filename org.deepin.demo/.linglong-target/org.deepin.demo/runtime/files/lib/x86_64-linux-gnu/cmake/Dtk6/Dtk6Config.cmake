# SPDX-FileCopyrightText: 2023 Uniontech Software Technology Co.,Ltd.
#
# SPDX-License-Identifier: BSD-3-Clause
include(CMakeFindDependencyMacro)
foreach(module ${Dtk6_FIND_COMPONENTS})
    find_dependency(Dtk6${module})
endforeach()
