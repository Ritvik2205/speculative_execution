.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rbx, rdx
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
test rbx, 33
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
cmovnb rsi, rbx
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rdx]
btc rdx, rsi
jmp .bb_0.1
.bb_0.1:
cmovnz cx, cx
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and bl, bl
or di, 90
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and dl, dl
test di, 33
test dil, dil
and bl, 120 # instrumentation
cmovnp ax, si
xor rbx, 89
and bl, 108 # instrumentation
cmovns rax, rax
btr rsi, 207
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
