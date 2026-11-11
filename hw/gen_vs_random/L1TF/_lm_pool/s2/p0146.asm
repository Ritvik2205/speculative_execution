.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -70
cmp rsi, 45
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
xor cl, al
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 114
lea bx, qword ptr [rsi + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rsi]
mov cl, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
