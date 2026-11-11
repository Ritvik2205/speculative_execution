.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ecx, -1843375753
xor cl, 24
xor dl, 40
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
not sil
bt rbx, 241
and dl, -73
test ebx, -961564216
or al, bl
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
jmp .bb_0.1
.bb_0.1:
and dl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
and sil, -69
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
and bl, bl
and al, 67 # instrumentation
cmovl rax, rsi
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
and dil, -39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
