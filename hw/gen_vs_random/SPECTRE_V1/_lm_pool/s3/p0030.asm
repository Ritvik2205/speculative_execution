.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rbx]
neg rsi
sub dl, bl
lea rsi, qword ptr [rbx + rcx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
btr rsi, rax
inc eax
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
sbb dil, cl
test bl, -8
xor ax, 913
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
