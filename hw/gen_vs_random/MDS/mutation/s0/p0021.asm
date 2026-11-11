.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
xor rcx, 71
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and cl, -116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
cmovb rax, rbx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
xor edx, 94
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 4
bts esi, esi
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], ebx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 38
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and al, 57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
test rdi, rax
and cl, -8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rbx]
xor dil, sil
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
