.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
cmovs dx, cx
or al, sil
and rsi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rsi]
and bl, -30 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
xor rdi, -50
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
and dl, -18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 43
cmovl rbx, rdi
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
xor cx, si
or sil, al
and rcx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rcx]
btc rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
