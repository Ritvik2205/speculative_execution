.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
and dil, -62
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and cl, 9 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi]
cmovnl ebx, esi
and bl, 120 # instrumentation
cmovnle eax, eax
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rbx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
test dx, cx
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], esi
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
test di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
