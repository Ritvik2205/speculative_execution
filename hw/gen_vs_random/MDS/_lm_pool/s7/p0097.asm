.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
btc ax, dx
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
not cl
test sil, 41
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
or dil, 12
test dil, -51
xor dil, -5
or si, -12
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
or bl, 127
bt bx, dx
bt ax, bx
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
test rax, -2004802425
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
