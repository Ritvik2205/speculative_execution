.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
bts ecx, edx
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
cmovnz bx, cx
jmp .bb_0.1
.bb_0.1:
test sil, 29
jmp .bb_0.2
.bb_0.2:
add cl, 89 # instrumentation
adc dil, dl
and bl, dil
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
jmp .bb_0.4
.bb_0.4:
cmp si, 50
cmp si, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
