.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -114
test al, 127
jmp .bb_0.1
.bb_0.1:
or al, -22
test al, dil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and dil, 125
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and al, 84
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
not al
bt bx, ax
test al, -81
xor sil, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
