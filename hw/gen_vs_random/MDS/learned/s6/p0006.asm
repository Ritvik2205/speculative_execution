.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
or cl, al
xor al, -19
not bl
btr bx, dx
jmp .bb_0.1
.bb_0.1:
xor al, 9
and bl, 68
test eax, -1634766116
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and dil, dil
and ax, -4410
btr si, cx
xor rdi, -9
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
test al, 91
bts ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
