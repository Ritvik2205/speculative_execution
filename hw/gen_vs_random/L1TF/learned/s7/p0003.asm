.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
sbb ax, -9396
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 4
and bl, bl
and ax, 37
xor dl, 64
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
lea ax, qword ptr [rdx + rdi]
cmp al, -119
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
lea rax, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
