.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, cx
or rcx, 36
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
btc rcx, rsi
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
xchg esi, edx
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
jmp .bb_0.3
.bb_0.3:
sub cl, sil
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
or dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
