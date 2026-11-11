.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ebx
btr si, dx
and cl, 79
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
or dl, bl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or rsi, 57
xor rsi, -117
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
or al, -61
xor bl, -102
and cx, -8
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
