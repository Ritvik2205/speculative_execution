.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
lea ax, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
lea ecx, qword ptr [rbx + rcx]
add dil, 42 # instrumentation
lea ebx, qword ptr [rdi + rbx]
xor cl, bl
inc cl
mul al
cmovbe eax, ecx
test bl, al
xor bl, al
sub esi, -89
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
add bl, 89 # instrumentation
sbb al, dil
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
