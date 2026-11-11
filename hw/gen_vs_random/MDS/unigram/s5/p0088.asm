.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -18
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
and dil, 23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rsi]
xor edi, eax
cmovs eax, eax
and rax, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rax]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rbx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor rsi, -117
or si, 0b1000000000000000 # instrumentation
bsr si, si
test sil, al
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
or sil, -49
or rcx, 54
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 86
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
