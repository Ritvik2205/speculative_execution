.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ecx
and rdx, rdi
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
neg edi
or edi, eax
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
sbb al, cl
neg dx
lea ebx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
cmovz esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
