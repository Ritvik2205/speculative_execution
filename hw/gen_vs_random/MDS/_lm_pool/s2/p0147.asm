.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and cl, sil
xor bl, -102
and rax, -2058103810
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
or al, cl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
xor al, bl
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 59
xor di, -83
xor bl, cl
xor rax, -1128378406
and dl, cl
bt dx, ax
xor al, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
