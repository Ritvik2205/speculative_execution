.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
cmovnl eax, edx
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], dx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 82
bts ax, 22
and rbx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rbx]
and bl, dl
test cl, 54
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
btc eax, edx
or rbx, -72
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rsi
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
btc cx, 115
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
xor bl, -88
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
