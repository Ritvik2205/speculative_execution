.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
test dil, dl
jmp .bb_0.1
.bb_0.1:
test dl, cl
and al, -8
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
jmp .bb_0.2
.bb_0.2:
test ecx, -1843375753
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
xor ax, -1005
not sil
test dil, bl
and al, -8
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
xor cl, dl
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
and sil, -56
or bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
