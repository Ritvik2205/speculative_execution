.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and edi, 23
xor edi, 33
xor sil, -14
test al, al
and dl, dl
btc rbx, 102
xor cl, bl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rax, -731384280
xor dil, -3
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rsi, 86
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
