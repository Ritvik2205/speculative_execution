.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -8
or rsi, 16
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
btr dx, cx
and dl, cl
or dil, 16
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
xor al, cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
and di, 91
not dl
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
test dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
