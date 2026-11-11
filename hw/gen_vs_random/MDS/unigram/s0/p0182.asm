.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rax]
bt ebx, edx
or dl, al
test bl, -9
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdi]
or dl, -89
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 46
and rdi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdi]
and sil, 74
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
btc si, 99
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
test cl, sil
cmovnbe rbx, rbx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], bx
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
and bx, 88
xor bx, 83
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
