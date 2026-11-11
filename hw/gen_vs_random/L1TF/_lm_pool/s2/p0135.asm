.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 48
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
test eax, -2032743474
and cl, bl
jmp .bb_0.1
.bb_0.1:
setle bl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 56
test bx, 69
sub cl, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
