.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 94
or sil, dil
bt dx, bx
test al, dil
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
xor ax, -6793
test al, cl
xor bx, 64
jmp .bb_0.1
.bb_0.1:
test al, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
cmovle dx, bx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
