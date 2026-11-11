.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
cmp rdx, 3
not bl
and rax, -109
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
xor cx, 113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
