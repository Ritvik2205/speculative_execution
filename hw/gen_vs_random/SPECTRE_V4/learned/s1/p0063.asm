.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
or al, -47
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rbx]
or al, dl
xor dl, cl
or rax, 1042095162
and cl, bl
sbb cx, 106
sub cl, -94
or cl, 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
