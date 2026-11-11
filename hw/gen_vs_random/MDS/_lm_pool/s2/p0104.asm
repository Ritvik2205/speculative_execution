.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
btr bx, si
jmp .bb_0.1
.bb_0.1:
btr rdi, 129
test esi, 1857129931
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
or rax, -689609688
xor dil, -124
jmp .bb_0.2
.bb_0.2:
test esi, 1857129931
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
and sil, -9
xor sil, cl
or al, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
