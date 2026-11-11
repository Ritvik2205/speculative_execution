.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and cl, -58 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rbx]
and edx, -44
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
test rcx, -613256812
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 7
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], esi
cmovp ebx, edx
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
or sil, -78
or rbx, -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
