.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 49
lea dx, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
and bl, 125
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 79
and rsi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
btc edx, ecx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 3
setno sil
sbb al, bl
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
sbb si, ax
xor dil, sil
cmovnp edx, edi
sub cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
