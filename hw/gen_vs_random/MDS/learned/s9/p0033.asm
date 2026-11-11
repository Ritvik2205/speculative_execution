.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, si
test cl, 91
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
xor rdi, -9
and bl, 68
xor rbx, 89
and esi, 75
and rdx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdx]
xor bx, 94
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
