.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rax, -2039117613
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
or cl, 119
xor al, -26
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
jmp .bb_0.2
.bb_0.2:
or al, -22
or al, -58
or bl, -62
test dl, sil
xor cl, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
