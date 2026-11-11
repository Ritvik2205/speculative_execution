.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
xor rdx, 122
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
test edx, 1891691791
cmp cl, al
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
jl .bb_0.2
jmp .exit_0
.bb_0.2:
or sil, -44
and rax, 1163013815
lea rcx, qword ptr [rax + rdi]
not dl
or dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
