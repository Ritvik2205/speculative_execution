.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], -62
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
cmovno ax, si
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 85
and rcx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rcx]
cmovs dx, bx
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdx]
xor si, si
or bx, dx
xor rdx, rdx
or dl, -97
xor dil, 81
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 100
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 34
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
and dx, 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
