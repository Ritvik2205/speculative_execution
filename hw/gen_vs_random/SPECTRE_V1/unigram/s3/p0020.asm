.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], cl
cmovle rax, rdx
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 61
xor eax, ebx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rbx
xor edx, 72
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 76
xor sil, sil
cmovnbe edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
