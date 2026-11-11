.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -70
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and rdi, 52
and dl, -73
xor rcx, -2
and rax, 41
or al, 16
test rsi, 35
test dil, -51
or cl, -77
test al, cl
xor dil, 124
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
test rbx, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
