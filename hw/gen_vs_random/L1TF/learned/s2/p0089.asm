.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ebx
lea si, qword ptr [rsi + rax]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
setp dil
setb bl
xchg ecx, edx
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
lea edi, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
add cl, -84 # instrumentation
xchg rdx, rcx
sub ax, 19828
lea cx, qword ptr [rax + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
cmovz ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
