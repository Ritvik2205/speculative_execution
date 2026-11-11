.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
xor cl, 55
xor rax, -270810088
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 81
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or rdx, -48
or bx, 26
or al, -78
and dil, -62
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
bt ax, 76
bt bx, ax
or dil, -76
or cl, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
