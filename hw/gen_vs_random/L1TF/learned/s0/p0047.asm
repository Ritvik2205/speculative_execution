.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
test dil, -126
or sil, al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
inc cl
add al, -102
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 83
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 30
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
