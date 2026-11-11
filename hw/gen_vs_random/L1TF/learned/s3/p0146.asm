.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb bl, bl
cmp rsi, 38
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
xor cl, 89
jmp .bb_0.2
.bb_0.2:
lea cx, qword ptr [rdi + rdx + 84]
sbb al, -50
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
test sil, 29
or rax, -82
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
