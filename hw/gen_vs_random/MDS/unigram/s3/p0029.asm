.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, 193
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 91
cmovl edi, ecx
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 29
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and ax, 13090
bts rdx, 200
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rsi
test eax, 298249463
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and sil, 74
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
