.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
sub rcx, -121
xor dil, -42
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
test cl, 28
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
