.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr bx, cx
test dl, dl
test dil, dil
xor cl, -13
and rax, rax
xor rdx, rsi
cmovnbe di, dx
and bl, -6 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
test dil, 46
and cl, 122 # instrumentation
cmovl eax, eax
xor al, al
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
not rax
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
btr di, 89
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rcx
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rsi]
or bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
