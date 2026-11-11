.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
or sil, -78
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
cmovbe di, si
xor sil, dl
xor bl, 67
and dl, -58 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rbx]
btc ecx, 61
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -47
jmp .bb_0.1
.bb_0.1:
test dil, dil
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], esi
btr bx, bx
xor bl, -88
cmovo di, ax
btc ecx, ebx
and dl, -125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
not eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
