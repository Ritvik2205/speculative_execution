.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 37
and sil, al
test rax, -363019044
or al, 54
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
or dil, -78
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
and si, -121
or dil, 16
and eax, 33
test al, 91
xor dil, 8
xor al, 99
or al, 16
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
