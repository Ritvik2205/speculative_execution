.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rax, rbx
and al, 57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
xor edx, 17
and cl, -116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
xor rcx, -2
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
xor dil, sil
bts esi, esi
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -30
test rdi, rax
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], ebx
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and cl, -8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
