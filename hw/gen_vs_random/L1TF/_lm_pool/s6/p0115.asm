.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 73
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
add al, sil
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
lea rbx, qword ptr [rdx + rax]
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add cl, -36
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
