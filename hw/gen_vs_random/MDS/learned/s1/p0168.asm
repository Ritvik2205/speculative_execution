.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
test cl, 91
and al, 49
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
or dl, 51
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or cl, -36
xor rcx, -2
or al, dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
xor cl, 83
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
or ax, 85
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and dil, -39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
