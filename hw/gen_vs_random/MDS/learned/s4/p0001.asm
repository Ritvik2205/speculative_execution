.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], dx
and rcx, 107
and dl, cl
or rax, -689609688
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rax, 498847670
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
btc si, 99
and al, cl
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and bl, dil
or rax, -1523798580
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
