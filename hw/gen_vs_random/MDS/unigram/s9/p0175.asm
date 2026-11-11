.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], ecx
xor rcx, -2
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 6
cmovbe ax, si
and di, si
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
or bl, dl
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
cmovo edx, edi
btr esi, eax
cmovnz ebx, eax
bt ebx, 6
btr si, 208
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
