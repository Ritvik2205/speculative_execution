.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rdi
btc di, si
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], di
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi], 19
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
sub al, -75
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
