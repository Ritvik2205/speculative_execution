.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 49
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
bt ecx, eax
sbb dil, cl
sub cl, bl
sub dl, -12
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
adc sil, -77
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
