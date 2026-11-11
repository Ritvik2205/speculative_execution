.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
or rax, 1461812833
or al, 30
xor ax, -1005
test edx, -1561252782
test dl, -119
test al, 91
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], si
or sil, -49
and dil, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
