.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 15
sbb bl, -88
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
sub cl, 86
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
add dil, 88
jmp .bb_0.1
.bb_0.1:
test bl, -92
lea si, qword ptr [rdi + rcx + 67]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
