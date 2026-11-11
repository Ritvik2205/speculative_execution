.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
test bl, -92
cmovb di, dx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rbx]
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
or al, dl
sbb edi, 10
and rdi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
