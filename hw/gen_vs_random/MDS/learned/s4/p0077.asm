.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 30524
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
xor dil, sil
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and dl, -73
or dl, dil
jmp .bb_0.1
.bb_0.1:
btc bx, 58
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
or dl, bl
test al, 22
and dl, al
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
