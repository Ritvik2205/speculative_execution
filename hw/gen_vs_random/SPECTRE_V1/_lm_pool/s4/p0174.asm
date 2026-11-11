.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], cx
mov dil, bl
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -28
sub al, -1
xor bl, bl
mov dl, sil
sub dl, cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
test cl, -24
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
sub al, -1
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
