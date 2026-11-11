.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg eax, esi
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 39
xor al, dil
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dil
add al, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
and sil, cl
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
cmovnz dx, si
add cl, -27 # instrumentation
sets cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
