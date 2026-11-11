.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
xor edx, 17
or eax, -1777347252
xor dl, -19
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 17
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
bt di, dx
jmp .bb_0.1
.bb_0.1:
and cl, 79
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
