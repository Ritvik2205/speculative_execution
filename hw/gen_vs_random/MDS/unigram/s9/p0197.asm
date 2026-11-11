.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
xor bl, dl
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], bx
test si, dx
test rcx, -613256812
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rbx
jmp .bb_0.1
.bb_0.1:
xor ecx, 8
bt dx, 162
cmovnp si, di
btr eax, eax
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
xor al, sil
cmovnb di, cx
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
and cl, al
bts rcx, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
