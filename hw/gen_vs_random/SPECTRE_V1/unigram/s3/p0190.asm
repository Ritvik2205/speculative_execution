.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 23
xchg al, sil
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 92
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
setbe bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ebx
adc al, al
xor cl, 71
not si
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -75
imul edi, edx
and rax, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rax]
cmp bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
