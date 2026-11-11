.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rcx, rcx
and eax, 461212071
xor cl, dil
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor cl, dil
jmp .bb_0.1
.bb_0.1:
and bx, dx
xor dil, -70
and bx, 39
or al, bl
or cl, -77
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], eax
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
xor si, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
