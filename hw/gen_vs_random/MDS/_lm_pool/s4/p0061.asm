.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -78
and sil, dil
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
or cl, bl
or bl, dil
xor rax, -404206377
xor al, sil
jmp .bb_0.1
.bb_0.1:
test al, cl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
xor rdx, -59
or dl, -8
and sil, -69
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
jmp .bb_0.3
.bb_0.3:
xor al, 8
test eax, 424329527
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
