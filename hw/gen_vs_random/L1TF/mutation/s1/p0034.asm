.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
test eax, 899472326
or dx, 55
sub al, -75
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
add al, -57 # instrumentation
cmovo rdx, rbx
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rbx]
cmp al, 56
lea rax, qword ptr [rbx + rsi + 16229]
sbb edx, edx
cmovnz rbx, rax
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
xchg bl, dl
cmovbe eax, esi
bswap eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
