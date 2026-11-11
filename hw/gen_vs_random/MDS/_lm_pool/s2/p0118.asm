.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and sil, -56
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and bl, bl
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
or bx, 31
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and al, dil
jmp .bb_0.1
.bb_0.1:
test dl, 27
jmp .bb_0.2
.bb_0.2:
bt rax, 28
and sil, al
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
or cl, -36
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
