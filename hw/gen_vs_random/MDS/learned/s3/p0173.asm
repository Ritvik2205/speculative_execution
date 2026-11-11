.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 91 # instrumentation
cmovnle eax, eax
xor cl, sil
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
xor dl, bl
or cl, dl
and al, 75
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and ax, 27170
or al, 54
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
bt cx, bx
and dl, -73
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
cmovns di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
