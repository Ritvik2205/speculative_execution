.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and bl, -13 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and dl, 72 # instrumentation
cmovz edi, eax
and sil, -14 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rsi]
test bl, -14
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
cmovnle ecx, edi
test al, -7
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and cl, cl
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
xor ebx, 79
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 117
and dil, 50 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
xor rbx, 89
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
