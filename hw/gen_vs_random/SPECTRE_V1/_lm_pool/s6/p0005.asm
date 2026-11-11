.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 33
cmp rsi, 53
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
and al, -23
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 58
xor eax, -1721938664
sbb sil, -78
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
lea rdi, qword ptr [rax + rdi + 28]
inc ecx
add ax, 8031
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
