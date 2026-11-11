.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
xor sil, dl
btr cx, bx
jmp .bb_0.1
.bb_0.1:
and ax, 31082
and dl, dl
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and dil, -39
or sil, -78
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
or rbx, -72
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
