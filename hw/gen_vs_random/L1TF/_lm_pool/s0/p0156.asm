.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
sbb bl, -88
lea si, qword ptr [rdi]
test eax, -2032743474
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
add dil, -7
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 100
adc al, dl
jmp .bb_0.1
.bb_0.1:
cmp cx, 69
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and cl, 8
sub di, 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
