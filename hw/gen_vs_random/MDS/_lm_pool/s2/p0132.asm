.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -114
jmp .bb_0.1
.bb_0.1:
test al, 91
or bl, cl
test al, 66
xor rdi, -9
xor ax, 23633
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
xor rbx, 89
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
or dil, -78
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
test dl, bl
and ebx, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
