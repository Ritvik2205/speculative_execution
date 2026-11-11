.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
xor bx, 18
test dl, al
and rax, 452940266
xor cl, 83
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
test rdi, 91
test al, sil
test edi, -1252846009
xor al, 115
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
and eax, 33
xor al, cl
xor al, 122
xor bl, al
or al, -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
