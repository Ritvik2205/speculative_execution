.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, rdi
and al, -114
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or rax, -1561934807
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and di, 91
test sil, 41
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and si, -121
or dil, dl
cmovle si, dx
and sil, sil
or al, cl
test dil, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
