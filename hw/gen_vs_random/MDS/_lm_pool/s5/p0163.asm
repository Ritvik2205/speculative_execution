.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test cl, dil
bt si, bx
and dx, 3
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], di
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
test cl, al
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and sil, sil
xor al, dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and cl, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
