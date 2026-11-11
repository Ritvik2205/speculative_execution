.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
not dil
and al, sil
test dil, bl
or dil, cl
or al, 25
and cl, cl
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and al, 35
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
or cl, al
and dl, cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and ax, -16061
xor rbx, 89
xor al, 34
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
