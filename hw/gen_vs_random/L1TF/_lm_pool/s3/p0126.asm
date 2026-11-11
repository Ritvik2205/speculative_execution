.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -104 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
sub al, -3
and sil, dil
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
or al, dil
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
setp sil
sub cl, sil
cmp dil, 40
cmovle dx, bx
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
