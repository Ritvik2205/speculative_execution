.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, -118
and rdi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
cmp cl, 72
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
lea dx, qword ptr [rdi + rcx]
xor cx, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
