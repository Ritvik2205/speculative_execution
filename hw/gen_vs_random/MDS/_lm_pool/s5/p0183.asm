.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, cx
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and bx, 34
or cl, sil
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 78
bt di, dx
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
test al, dil
not dl
jmp .bb_0.1
.bb_0.1:
bt ax, bx
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and bl, dil
xor cl, 98
test esi, 425331143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
