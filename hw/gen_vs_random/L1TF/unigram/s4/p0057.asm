.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, 0b1000000000000000 # instrumentation
bsf di, bx
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 29
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rsi]
or dl, dil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rax]
setnz cl
imul rcx
jmp .bb_0.1
.bb_0.1:
lea edx, qword ptr [rbx + rdi + 66]
sub edi, 56
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 89
cmp cl, 57
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
and sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
