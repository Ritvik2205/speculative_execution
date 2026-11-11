.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -16696
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
test al, dil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
test esi, 1857129931
test eax, 424329527
bt edi, ebx
not sil
or al, cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 37
xor bl, -61
and sil, al
or cl, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
