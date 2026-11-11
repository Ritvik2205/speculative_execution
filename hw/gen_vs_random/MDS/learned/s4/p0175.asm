.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, ax
xor cl, -13
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 54
jmp .bb_0.1
.bb_0.1:
and dil, cl
or cl, dil
bts rcx, 12
or sil, bl
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
xor dl, -19
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
