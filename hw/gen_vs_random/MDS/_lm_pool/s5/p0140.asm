.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 33
xor rax, -1128378406
test dil, -80
xor cl, -13
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
xor dil, -3
xor sil, cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
or al, 37
test dil, 46
or ax, -7150
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
