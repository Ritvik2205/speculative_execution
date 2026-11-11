.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dil
xor sil, 27
or al, sil
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
and al, cl
and rax, -2058103810
not dl
xor rdi, -9
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
or dl, sil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 12
and ax, 19224
test edx, -1561252782
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
