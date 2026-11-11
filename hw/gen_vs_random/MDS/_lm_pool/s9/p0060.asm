.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 30
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 91
xor bx, 14
and eax, 366961170
or al, -24
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
test bl, dl
xor al, 122
and al, al
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
and al, dil
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
