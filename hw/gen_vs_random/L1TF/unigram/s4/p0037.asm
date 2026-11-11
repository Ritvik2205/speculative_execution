.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rdx]
add dl, 78 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], di
or edi, ebx
sub cl, bl
add dl, -8 # instrumentation
lea edx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
cmovnz rdi, rax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 109
sbb rax, 803312930
adc sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
