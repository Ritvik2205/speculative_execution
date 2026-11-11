.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, cl
xor rax, -843636050
or al, bl
test sil, -55
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and dl, dl
or dl, dl
or sil, sil
and al, cl
test ax, 18697
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and si, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
