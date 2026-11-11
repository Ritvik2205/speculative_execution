.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
sbb al, -114
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
inc rdx
sub al, -1
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
sbb al, 33
sub al, cl
add al, -47
js .bb_0.1
jmp .exit_0
.bb_0.1:
setno dil
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx], -25
sbb rax, 342397759
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
