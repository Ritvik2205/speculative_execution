.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dil
test dl, -7
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], ax
test cl, -120
sbb dil, al
bt esi, ecx
sbb al, 104
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
