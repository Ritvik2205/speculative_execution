.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
or dx, 55
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
sub al, 26
add al, -57 # instrumentation
cmovo rdx, rbx
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
test eax, -2032743474
jmp .bb_0.1
.bb_0.1:
xchg bl, dl
cmp al, 27
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
sbb edx, edx
cmovbe eax, esi
and rbx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rbx]
lea rax, qword ptr [rbx + rsi + 16229]
bswap eax
cmovnz rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
