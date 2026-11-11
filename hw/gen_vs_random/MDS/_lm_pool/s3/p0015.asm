.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, sil
or rax, -689609688
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 62
or sil, -49
jmp .bb_0.3
.bb_0.3:
or al, sil
xor rsi, -117
or al, 24
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
jmp .bb_0.5
.bb_0.5:
or cl, -36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
