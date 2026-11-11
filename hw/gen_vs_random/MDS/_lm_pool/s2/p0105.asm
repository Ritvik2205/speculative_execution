.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ecx
or bl, dl
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
xor rdi, -9
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
or bl, cl
and bl, dl
and al, sil
jmp .bb_0.2
.bb_0.2:
and cl, dl
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
