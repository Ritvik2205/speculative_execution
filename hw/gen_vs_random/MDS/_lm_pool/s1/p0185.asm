.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rsi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rsi]
or al, dl
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
or al, bl
test edx, -372470678
and dl, -73
or sil, -78
btc bx, 58
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
xor dil, sil
and sil, bl
or cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
