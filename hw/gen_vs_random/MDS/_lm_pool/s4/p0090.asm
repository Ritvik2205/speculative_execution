.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 101
xor bx, 95
xor sil, 94
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 6
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
or al, cl
test al, cl
test edx, -372470678
xor dil, dl
and al, dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
test cl, -113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
