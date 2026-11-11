.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -52
and rdx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdx]
or cl, sil
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
not al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and eax, -1143711697
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi]
cmovs eax, edi
sbb rdi, 110
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
setnbe dl
add al, 22 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
