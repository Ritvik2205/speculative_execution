.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test dil, -116
xor al, sil
and rbx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
cmp cx, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
