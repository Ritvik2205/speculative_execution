.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, sil
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and bl, 68
or dl, -89
or dx, 125
bts rdi, rbx
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
test dil, -51
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 92
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 78
test ebx, -2015966884
or cx, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
