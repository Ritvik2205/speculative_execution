.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rcx, 71
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
or rcx, -17
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdi
and al, -82 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
btr si, 208
and bx, 50
and dl, 21 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
cmovb rsi, rdx
btr bx, bx
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
test dl, dil
xor rsi, -117
cmovs di, si
cmovnz di, dx
btc rdx, 21
btr di, si
xor bl, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
