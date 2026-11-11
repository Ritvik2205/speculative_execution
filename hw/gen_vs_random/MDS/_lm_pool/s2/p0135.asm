.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, -83
and al, 84
or al, -61
xor al, 34
and si, -121
or bl, cl
xor al, 9
and al, -54
and al, -8
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
xor ax, -1005
and dil, 125
not dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
