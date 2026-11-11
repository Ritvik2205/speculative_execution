.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 30
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and sil, dil
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
cmovno esi, edx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
and al, -56 # instrumentation
cmovl rdx, rax
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 39
test rsi, 879594088
test cl, 56
xor di, ax
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 22
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -106
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
