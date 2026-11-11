.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
lea rax, qword ptr [rdx + rbx]
test bl, -8
xor cl, 71
sub al, 63
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 22
sbb bl, al
or bl, 91
btc ax, cx
or rcx, 74
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
lea rbx, qword ptr [rdi + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
