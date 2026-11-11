.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ebx, eax
btr eax, esi
and dl, -73
and rbx, rdi
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 58
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and al, dil
and ecx, -104
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rsi
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
xor al, sil
or edx, -1
cmovz rsi, rcx
test dil, 46
and bl, -99 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
test al, dl
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
