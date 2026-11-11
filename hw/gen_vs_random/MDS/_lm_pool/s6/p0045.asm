.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
xor dil, 81
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
xor rbx, 89
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 35
and dl, dl
jmp .bb_0.1
.bb_0.1:
or cl, bl
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], dx
and cl, -71
test rbx, 45
or cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
