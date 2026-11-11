.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr cx, ax
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and sil, -69
test dl, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and dil, dil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
cmovle si, dx
xor bl, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
