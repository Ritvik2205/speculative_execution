.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 27
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
cmp bx, -21
and rdx, 88
or sil, al
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb bl, dil
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
