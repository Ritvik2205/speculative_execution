.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add dil, 72
sbb sil, -78
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea dx, qword ptr [rbx + rcx]
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
xchg dl, cl
add cl, al
add edx, 56
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
test al, -75
sub al, -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
