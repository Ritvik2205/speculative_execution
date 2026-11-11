.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -69
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 52
or dil, dil
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or ax, -7150
not al
or dil, bl
and cx, -8
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
or ecx, edx
or dl, -31
or dil, 16
xor rdi, -9
or al, 54
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
