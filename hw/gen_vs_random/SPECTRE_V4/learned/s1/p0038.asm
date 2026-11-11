.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 39
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
adc al, cl
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
neg rax
cmp dil, dl
dec dl
adc sil, -112
xor ax, 45
sub al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
