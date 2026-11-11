.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 8
or rcx, 54
test ebx, -961564216
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
or cx, 49
btr rdi, 129
not al
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and rax, 452940266
test esi, 1857129931
test al, 127
or rax, -1523798580
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
jmp .bb_0.1
.bb_0.1:
or al, -17
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
and ax, -4410
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
